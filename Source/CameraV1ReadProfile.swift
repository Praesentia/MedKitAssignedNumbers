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


public struct CameraV1ReadProfile: CameraV1Method {

    public typealias Reply = CameraProfileV1

    // MARK: - Properties
    public var type: CameraV1MethodType { return .readProfile }

    // MARK: - Private
    private typealias CodingKeys = MethodV1CodingKeys

    // MARK: - Initializers

    public init()
    {
    }

    // MARK: - Codable

    public init(from decoder: Decoder) throws
    {
        let _ = try decoder.container(keyedBy: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws
    {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
    }

}


// End of File


