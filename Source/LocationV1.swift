/*
 -----------------------------------------------------------------------------
 This source file is part of MedKitAssignedNumbers.

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
import MedKitCore


public struct LocationV1: Codable {

    // MARK: - Properties
    public var description  : String?
    public var details      : LocationDetailsV1?

    // MARK: - Private
    private enum CodingKeys: CodingKey {
        case description
        case details
    }

    // MARK: - Initialize

    public init()
    {
    }

    public init(description: String?, details: LocationDetailsV1?)
    {
        self.description = description
        self.details     = details
    }

    // MARK: - Codable

    public init(from decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        description = try container.decodeIfPresent(String.self,            forKey: .description)
        details     = try container.decodeIfPresent(LocationDetailsV1.self, forKey: .details)
    }

    public func encode(to encoder: Encoder) throws
    {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(description, forKey: .description)
        try container.encode(details,     forKey: .details)
    }

}


// End of File



