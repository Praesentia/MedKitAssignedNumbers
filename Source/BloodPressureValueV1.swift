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


public struct BloodPressureValueV1<T: Numeric & Codable>: Codable {

    // MARK: - Properties
    public var systolic  : T
    public var diastolic : T

    // MARK: - Proivate
    private enum CodingKeys: CodingKey {
        case systolic
        case diastolic
    }

    // MARK: - Initializers

    public init(systolic: T, diastolic: T)
    {
        self.systolic  = systolic
        self.diastolic = diastolic
    }

    // MARK: - Codable

    public init(from decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        systolic  = try container.decode(T.self, forKey: .systolic)
        diastolic = try container.decode(T.self, forKey: .diastolic)
    }

    public func encode(to encoder: Encoder) throws
    {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(systolic,  forKey: .systolic)
        try container.encode(diastolic, forKey: .diastolic)
    }

}


// End of File




