/*
 -----------------------------------------------------------------------------
 This source file is part of MedKitDomain.

 Copyright 2016-2018 Jon Griffeth

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 -----------------------------------------------------------------------------
 */


import Foundation
import MedKitCore


/**
 Image

 An image representation, consisting of either a symbolic name or the actual
 image data.
 */
public class ImageV1: Codable {

    // MARK: - Types

    /**
     Image type.
     */
    public enum ImageType: String, Codable {
        case data     = "data"
        case symbolic = "symbolic"
    }

    // MARK: - Properties
    public var              base64 : String? { return data?.base64EncodedString() }
    public private(set) var data   : Data?
    public private(set) var name   : String?
    public let              type   : ImageType

    // MARK: - Private
    private enum CodingKeys: CodingKey {
        case type
        case value
    }

    // MARK: - Initializers

    /**
     Initialize instance.

     Initializes the instance with a symbolic name that may be used to
     reference actual image data stored elsewhere, such as in an assets
     database.

     - Parameters:
        - name: The symbolic name for the image.
     */
    public init(named name: String)
    {
        self.type = .symbolic
        self.name = name
    }

    /**
     Initialize instance.

     Initializes the instance from image data.

     - Parameters:
        - data: The image data.
     */
    public init(data: Data)
    {
        self.type = .data
        self.data = data
    }

    /**
     Initialize instance.

     Initializes the instance from image data encoded as a base64 string.

     - Parameters:
        - base64: A base64 string encoding the image data.
     */
    public convenience init?(fromBase64 base64: String)
    {
        let data = NSData(base64Encoded: base64) as Data?

        if data != nil {
            self.init(data: data!)
        }
        else {
            return nil
        }
    }

    // MARK: - Codable

    required public init(from decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        type = try container.decode(ImageType.self, forKey: .type)
        switch type {
        case .data :
            let base64 = try container.decode(String.self, forKey: .value)
            data = NSData(base64Encoded: base64) as Data?
            name = nil

        case .symbolic :
            data = nil
            name = try container.decode(String.self, forKey: .value)
        }
    }

    public func encode(to encoder: Encoder) throws
    {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(type, forKey: .type)
        switch type {
        case .data :
            try container.encode(data!.base64EncodedData(), forKey: .value)

        case .symbolic :
            try container.encode(name!, forKey: .value)
        }
    }

}

public typealias Image = ImageV1


// End of File

