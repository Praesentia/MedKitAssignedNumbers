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


/**
 Update, Version 1
 */
public struct UpdateV1<T: Codable>: Codable {

    public typealias Value = T

    // MARK: - Properties
    public var value : Value //: Updated value.
    public var time  : Time  //: Time at which the update was performed.

    // MARK: - Private
    private enum CodingKeys: CodingKey {
        case value
        case time
    }

    // MARK: - Initializers

    public init(value: Value, time: Time)
    {
        self.value = value
        self.time  = time
    }

    // MARK: - Codable

    public init(from decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        value = try container.decode(Value.self, forKey: .value)
        time  = try container.decode(Time.self,  forKey: .time)
    }

    public func encode(to encoder: Encoder) throws
    {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(value, forKey: .value)
        try container.encode(time,  forKey: .time)
    }

}


// End of File
