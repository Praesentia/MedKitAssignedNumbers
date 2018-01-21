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
import MedKitCore


public typealias DeviceInfoV1 = MedKitCore.DeviceInfo

public struct PatientProfileV1: Codable
{
    public typealias PatientInfo = PatientInfoV1
    public typealias DeviceInfo  = DeviceInfoV1

    // MARK: - Properties
    public var info    : PatientInfo
    public var devices : [DeviceInfo]

    // MARK: - Private
    private enum CodingKeys: CodingKey {
        case info
        case devices
    }

    // MARK: - Initializers

    public init(info: PatientInfo)
    {
        self.info    = info
        self.devices = []
    }

    // MARK: - Codable

    public init(from decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        info    = try container.decode(PatientInfo.self,  forKey: .info)
        devices = try container.decode([DeviceInfo].self, forKey: .devices)
    }

    public func encode(to encoder: Encoder) throws
    {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(info,    forKey: .info)
        try container.encode(devices, forKey: .devices)
    }

}


// End of File
