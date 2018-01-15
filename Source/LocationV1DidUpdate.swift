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


public struct LocationV1DidUpdate: LocationV1Notification {

    public typealias Args = LocationV1

    // MARK: - Properties
    public var type : LocationV1NotificationType { return .didUpdate }
    public let args : Args

    // MARK: - Private
    private typealias CodingKeys = NotificationV1CodingKeys

    // MARK: - Initializers

    public init(args: Args)
    {
        self.args = args
    }

    // MARK: - Codable

    public init(from decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        args = try container.decode(Args.self, forKey: .args)
    }

    public func encode(to encoder: Encoder) throws
    {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(type, forKey: .type)
        try container.encode(args, forKey: .args)
    }

}


// End of File
