/*
 -----------------------------------------------------------------------------
 This source file is part of MedKitAssignedNumbers.

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


public extension ResourceProtocolType {

    /**
     Localized description for the resource type.
     */
    public var localizedDescription: String { return ResourceProtocolType.localizedDescriptions[identifier] ?? identifier.uuidstring }

    /**
     Localized description for resource types.
     */
    static let localizedDescriptions = [
        ResourceProtocolTypeAlert         : NSLocalizedString("Alert",          comment: "Resource protocol type description."),
        ResourceProtocolTypeBloodPressure : NSLocalizedString("Blood Pressure", comment: "Resource protocol type description."),
        ResourceProtocolTypeCamera        : NSLocalizedString("Camera",         comment: "Resource protocol type description."),
        ResourceProtocolTypeLocation      : NSLocalizedString("Location",       comment: "Resource protocol type description."),
        ResourceProtocolTypeMeasurement   : NSLocalizedString("Measurement",    comment: "Resource protocol type description."),
        ResourceProtocolTypePatient       : NSLocalizedString("Patient",        comment: "Resource protocol type description."),
        ResourceProtocolTypeWaveform      : NSLocalizedString("Waveform",       comment: "Resource protocol type description.")
    ]

}

/**
 Resource protocol type identifiers.
 */
public let ResourceProtocolTypeAlert         = UUID(uuidString: "77d23127-65e0-4946-9a84-f70467c13783")!
public let ResourceProtocolTypeBloodPressure = UUID(uuidString: "3948450e-ed95-4433-a02b-4b650cb5cf94")!
public let ResourceProtocolTypeCamera        = UUID(uuidString: "b1b3bf84-dc7b-4866-9b86-65274b60f29f")!
public let ResourceProtocolTypeLocation      = UUID(uuidString: "523a4cc1-aa68-4d30-8829-7b815e42e487")!
public let ResourceProtocolTypeMeasurement   = UUID(uuidString: "0f71de24-e436-4a75-b7a0-2929d2e9b5e2")!
public let ResourceProtocolTypePatient       = UUID(uuidString: "292ad6e5-324d-4339-b494-926b03048ee1")!
public let ResourceProtocolTypeWaveform      = UUID(uuidString: "55a3c23d-bf52-4158-a645-06ba85fec14e")!


// End of File
