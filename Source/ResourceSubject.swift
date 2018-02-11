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
 Extends ResourceSubject with a localized description.
 */
public extension ResourceSubject {

    /**
     Localized description for the resource type.
     */
    public var localizedDescription: String { return ResourceSubject.localizedDescriptions[identifier] ?? identifier.uuidLowercase }

    /**
     Localized description for resource types.
     */
    static let localizedDescriptions = [
        ResourceSubjectIdentifierBloodOxygenSaturation : NSLocalizedString("Blood Oxygen Saturation", comment: "Resource type description."),
        ResourceSubjectIdentifierBloodPressure         : NSLocalizedString("Blood Pressure",          comment: "Resource type description."),
        ResourceSubjectIdentifierCamera                : NSLocalizedString("Camera",                  comment: "Resource type description."),
        ResourceSubjectIdentifierECG                   : NSLocalizedString("ECG",                     comment: "Resource type description."),
        ResourceSubjectIdentifierLocation              : NSLocalizedString("Location",                comment: "Resource type description."),
        ResourceSubjectIdentifierPatient               : NSLocalizedString("Patient",                 comment: "Resource type description."),
        ResourceSubjectIdentifierPulseRate             : NSLocalizedString("Pulse Rate",              comment: "Resource type description."),
        ResourceSubjectIdentifierPerfusionIndex        : NSLocalizedString("Perfusion Index",         comment: "Resource type description."),
        ResourceSubjectIdentifierRespiration           : NSLocalizedString("Respiration",             comment: "Resource type description."),
        ResourceSubjectIdentifierRespirationRate       : NSLocalizedString("Respiration Rate",        comment: "Resource type description."),
        ResourceSubjectIdentifierSkinTemperature       : NSLocalizedString("Skin Temperature",        comment: "Resource type description."),
        ResourceSubjectIdentifierSoftwareVersion       : NSLocalizedString("Software Version",        comment: "Resource type description.")
    ]

}

/**
 Resource subject identifiers.
 */
let ResourceSubjectIdentifierBloodOxygenSaturation = UUID(uuidString: "1ba8c945-7195-4a2a-a875-0c98528eb637")!
let ResourceSubjectIdentifierBloodPressure         = UUID(uuidString: "16ca57af-5f42-4008-a398-8a0917384e92")!
let ResourceSubjectIdentifierCamera                = UUID(uuidString: "7e470049-f3aa-4bda-98ac-ce980137488c")!
let ResourceSubjectIdentifierECG                   = UUID(uuidString: "1a4a6fe7-4882-4737-b61b-0291de47d8e6")!
let ResourceSubjectIdentifierLocation              = UUID(uuidString: "41f42113-5ba2-44d2-a3f4-d062f7bec929")!
let ResourceSubjectIdentifierPatient               = UUID(uuidString: "2fa67527-c69c-473a-b1a5-f9fdaf83b97a")!
let ResourceSubjectIdentifierPerfusionIndex        = UUID(uuidString: "9d2b38b7-d170-4c0a-b76e-01177d79cc71")!
let ResourceSubjectIdentifierPulseRate             = UUID(uuidString: "38948d8b-5d14-4c56-b77b-70813aa6404f")!
let ResourceSubjectIdentifierRespiration           = UUID(uuidString: "e4775c0a-ce89-4eb0-b0fc-986e583b5530")!
let ResourceSubjectIdentifierRespirationRate       = UUID(uuidString: "23adef66-a104-4aee-b6b5-044a7b7707a5")!
let ResourceSubjectIdentifierSkinTemperature       = UUID(uuidString: "580e291e-5637-47c7-8931-66812d107b0a")!
let ResourceSubjectIdentifierSoftwareVersion       = UUID(uuidString: "2539cb22-2c7b-4a88-96ec-a189f2d0b28d")!

/**
 Resource subject identifiers.
 */
public let ResourceSubjectBloodOxygenSaturation = ResourceSubject(withIdentifier: ResourceSubjectIdentifierBloodOxygenSaturation)
public let ResourceSubjectBloodPressure         = ResourceSubject(withIdentifier: ResourceSubjectIdentifierBloodPressure)
public let ResourceSubjectCamera                = ResourceSubject(withIdentifier: ResourceSubjectIdentifierCamera)
public let ResourceSubjectECG                   = ResourceSubject(withIdentifier: ResourceSubjectIdentifierECG)
public let ResourceSubjectLocation              = ResourceSubject(withIdentifier: ResourceSubjectIdentifierLocation)
public let ResourceSubjectPatient               = ResourceSubject(withIdentifier: ResourceSubjectIdentifierPatient)
public let ResourceSubjectPerfusionIndex        = ResourceSubject(withIdentifier: ResourceSubjectIdentifierPerfusionIndex)
public let ResourceSubjectPulseRate             = ResourceSubject(withIdentifier: ResourceSubjectIdentifierPulseRate)
public let ResourceSubjectRespiration           = ResourceSubject(withIdentifier: ResourceSubjectIdentifierRespiration)
public let ResourceSubjectRespirationRate       = ResourceSubject(withIdentifier: ResourceSubjectIdentifierRespirationRate)
public let ResourceSubjectSkinTemperature       = ResourceSubject(withIdentifier: ResourceSubjectIdentifierSkinTemperature)
public let ResourceSubjectSoftwareVersion       = ResourceSubject(withIdentifier: ResourceSubjectIdentifierSoftwareVersion)


// End of File
