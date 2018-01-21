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
 Patient name.
 */
public struct NameV1: Codable {

    /**
     Format enumeration.
     */
    public enum Format {
        case firstLast
        case lastFirst
    }

    // MARK: - Properties
    public static var defaultFormat : Format = .firstLast

    public var first     : String?
    public var last      : String?
    public var formatted : String { return format() }

    // MARK: - Private

    private enum CodingKeys: CodingKey {
        case first
        case last
    }

    // MARK: - Initializers

    /**
     Initialize instance.
     */
    public init()
    {
    }

    // MARK: - Codable

    public init(from decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        first = try container.decode(String.self, forKey: .first)
        last  = try container.decode(String.self, forKey: .last)
    }

    public func encode(to encoder: Encoder) throws
    {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(first, forKey: .first)
        try container.encode(last,  forKey: .last)
    }

    // MARK: - Formatting

    public func format(format: Format = NameV1.defaultFormat) -> String
    {
        switch format {
        case .firstLast :
            return "\(first ?? "-") \(last ?? "-")"

        case .lastFirst :
            return "\(last ?? "-"), \(first ?? "-")"
        }
    }

}


// End of File

