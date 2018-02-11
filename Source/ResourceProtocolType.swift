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


/**
 Extends ResourceProtocolType with a localized description.
 */
public extension ResourceProtocolType {

    /**
     Localized description for the resource type.
     */
    public var localizedDescription: String { return ResourceProtocolType.localizedDescriptions[identifier] ?? identifier.uuidLowercase }

    /**
     Localized description for resource types.
     */
    static let localizedDescriptions = [
        ResourceProtocolIdentifierAlert         : NSLocalizedString("Alert",          comment: "Resource protocol type description."),
        ResourceProtocolIdentifierBloodPressure : NSLocalizedString("Blood Pressure", comment: "Resource protocol type description."),
        ResourceProtocolIdentifierCamera        : NSLocalizedString("Camera",         comment: "Resource protocol type description."),
        ResourceProtocolIdentifierLocation      : NSLocalizedString("Location",       comment: "Resource protocol type description."),
        ResourceProtocolIdentifierMeasurement   : NSLocalizedString("Measurement",    comment: "Resource protocol type description."),
        ResourceProtocolIdentifierPatient       : NSLocalizedString("Patient",        comment: "Resource protocol type description."),
        ResourceProtocolIdentifierWaveform      : NSLocalizedString("Waveform",       comment: "Resource protocol type description.")
    ]

}

/**
 Resource protocol type identifiers.
 */
let ResourceProtocolIdentifierAlert         = UUID(uuidString: "77d23127-65e0-4946-9a84-f70467c13783")!
let ResourceProtocolIdentifierBloodPressure = UUID(uuidString: "3948450e-ed95-4433-a02b-4b650cb5cf94")!
let ResourceProtocolIdentifierCamera        = UUID(uuidString: "b1b3bf84-dc7b-4866-9b86-65274b60f29f")!
let ResourceProtocolIdentifierLocation      = UUID(uuidString: "523a4cc1-aa68-4d30-8829-7b815e42e487")!
let ResourceProtocolIdentifierMeasurement   = UUID(uuidString: "0f71de24-e436-4a75-b7a0-2929d2e9b5e2")!
let ResourceProtocolIdentifierPatient       = UUID(uuidString: "292ad6e5-324d-4339-b494-926b03048ee1")!
let ResourceProtocolIdentifierWaveform      = UUID(uuidString: "55a3c23d-bf52-4158-a645-06ba85fec14e")!

/**
 Resource protocol type identifiers.
 */
public let ResourceProtocolTypeAlert         = ResourceProtocolType(withIdentifier: ResourceProtocolIdentifierAlert)
public let ResourceProtocolTypeBloodPressure = ResourceProtocolType(withIdentifier: ResourceProtocolIdentifierBloodPressure)
public let ResourceProtocolTypeCamera        = ResourceProtocolType(withIdentifier: ResourceProtocolIdentifierCamera)
public let ResourceProtocolTypeLocation      = ResourceProtocolType(withIdentifier: ResourceProtocolIdentifierLocation)
public let ResourceProtocolTypeMeasurement   = ResourceProtocolType(withIdentifier: ResourceProtocolIdentifierMeasurement)
public let ResourceProtocolTypePatient       = ResourceProtocolType(withIdentifier: ResourceProtocolIdentifierPatient)
public let ResourceProtocolTypeWaveform      = ResourceProtocolType(withIdentifier: ResourceProtocolIdentifierWaveform)


// End of File
