/*
 -----------------------------------------------------------------------------
 This source file is part of MedKitDomain.

 Copyright 2017-2018 Jon Griffeth

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


public struct PatientInfoV1: Codable {

    // MARK: - Properties
    public let birthdate  : Date?
    public let identifier : String
    public let name       : NameV1
    public let photo      : ImageV1?

    // MARK: - Private
    private enum CodingKeys: CodingKey {
        case birthdate
        case identifier
        case name
        case photo
    }

    // MARK: - Initializers

    init(identifier: String, name: Name)
    {
        self.birthdate  = nil
        self.identifier = identifier
        self.name       = name
        self.photo      = nil
    }

    // MARK: - Codable

    public init(from decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        if let birthdateString = try container.decodeIfPresent(String.self, forKey: .birthdate) {
            birthdate = try Date(rfc3339: birthdateString)
        }
        else {
            birthdate = nil
        }

        identifier = try container.decode(String.self, forKey: .identifier)
        name       = try container.decode(NameV1.self, forKey: .name)
        photo      = try container.decodeIfPresent(ImageV1.self, forKey: .photo)
    }

    public func encode(to encoder: Encoder) throws
    {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(birthdate?.rfc3339, forKey: .birthdate)
        try container.encode(identifier, forKey: .identifier)
        try container.encode(name, forKey: .name)
        try container.encode(photo, forKey: .photo)
    }

}

public typealias PatientInfo = PatientInfoV1


// End of File
