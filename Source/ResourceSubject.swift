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
 Resource type extension.
 */
public extension ResourceSubject {

    /**
     Localized description for the resource type.
     */
    public var localizedDescription: String { return ResourceSubject.localizedDescriptions[identifier] ?? identifier.uuidstring }

    /**
     Localized description for resource types.
     */
    static let localizedDescriptions = [
        ResourceSubjectBloodOxygenSaturation : NSLocalizedString("Blood Oxygen Saturation", comment: "Resource type description."),
        ResourceSubjectBloodPressure         : NSLocalizedString("Blood Pressure",          comment: "Resource type description."),
        ResourceSubjectCamera                : NSLocalizedString("Camera",                  comment: "Resource type description."),
        ResourceSubjectECG                   : NSLocalizedString("ECG",                     comment: "Resource type description."),
        ResourceSubjectLocation              : NSLocalizedString("Location",                comment: "Resource type description."),
        ResourceSubjectPatient               : NSLocalizedString("Patient",                 comment: "Resource type description."),
        ResourceSubjectPulseRate             : NSLocalizedString("Pulse Rate",              comment: "Resource type description."),
        ResourceSubjectPulseRateAlert        : NSLocalizedString("Pulse Rate Alert",        comment: "Resource type description."),
        ResourceSubjectRespirationRate       : NSLocalizedString("Respiration Rate",        comment: "Resource type description."),
        ResourceSubjectRespiration           : NSLocalizedString("Respiration",             comment: "Resource type description."),
        ResourceSubjectSkinTemperature       : NSLocalizedString("Skin Temperature",        comment: "Resource type description."),
        ResourceSubjectSoftwareVersion       : NSLocalizedString("Software Version",        comment: "Resource type description.")
    ]

}

/**
 Resource type identifiers.
 */
public let ResourceSubjectBloodOxygenSaturation = UUID(uuidString: "1ba8c945-7195-4a2a-a875-0c98528eb637")!
public let ResourceSubjectBloodPressure         = UUID(uuidString: "16ca57af-5f42-4008-a398-8a0917384e92")!
public let ResourceSubjectCamera                = UUID(uuidString: "7e470049-f3aa-4bda-98ac-ce980137488c")!
public let ResourceSubjectECG                   = UUID(uuidString: "1a4a6fe7-4882-4737-b61b-0291de47d8e6")!
public let ResourceSubjectLocation              = UUID(uuidString: "41f42113-5ba2-44d2-a3f4-d062f7bec929")!
public let ResourceSubjectPatient               = UUID(uuidString: "2fa67527-c69c-473a-b1a5-f9fdaf83b97a")!
public let ResourceSubjectPerfusionIndex        = UUID(uuidString: "9d2b38b7-d170-4c0a-b76e-01177d79cc71")!
public let ResourceSubjectPulseRate             = UUID(uuidString: "38948d8b-5d14-4c56-b77b-70813aa6404f")!
public let ResourceSubjectPulseRateAlert        = UUID(uuidString: "a273ebda-cfd2-41af-b111-67bb07c9be7f")!
public let ResourceSubjectRespirationRate       = UUID(uuidString: "23adef66-a104-4aee-b6b5-044a7b7707a5")!
public let ResourceSubjectRespiration           = UUID(uuidString: "e4775c0a-ce89-4eb0-b0fc-986e583b5530")!
public let ResourceSubjectSkinTemperature       = UUID(uuidString: "580e291e-5637-47c7-8931-66812d107b0a")!
public let ResourceSubjectSoftwareVersion       = UUID(uuidString: "2539cb22-2c7b-4a88-96ec-a189f2d0b28d")!


// End of File
