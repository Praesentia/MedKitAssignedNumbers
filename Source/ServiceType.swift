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
 Extends ServiceType with a localized description.
 */
public extension ServiceType {

    /**
     Localized description for the service type.
     */
    public var localizedDescription: String  { return ServiceType.localizedDescriptions[identifier] ?? identifier.uuidLowercase }
    
    /**
     Localizable string representation for service types.
     */
    static let localizedDescriptions = [
        ServiceIdentifierOther              : NSLocalizedString("Other",              comment: "Service type description."),
        ServiceIdentifierDeviceInformation  : NSLocalizedString("Device Information", comment: "Service type description."),
        ServiceIdentifierElectrocardiograph : NSLocalizedString("Electrocardiograph", comment: "Service type description."),
        ServiceIdentifierEndoscope          : NSLocalizedString("Endoscope",          comment: "Service type description."),
        ServiceIdentifierPatientSimulator   : NSLocalizedString("Patient Simulator",  comment: "Service type description."),
        ServiceIdentifierPulseOximeter      : NSLocalizedString("Pulse Oximeter",     comment: "Service type description."),
        ServiceIdentifierRespiration        : NSLocalizedString("Respiration",        comment: "Service type description."),
        ServiceIdentifierSphygmograph       : NSLocalizedString("Sphygmograph",       comment: "Service type description."),
        ServiceIdentifierSphygmomanometer   : NSLocalizedString("Sphygmomanometer",   comment: "Service type description."),
        ServiceIdentifierThermometer        : NSLocalizedString("Thermometer",        comment: "Service type description.")
    ]

}

/**
 Service identifiers.
 */
let ServiceIdentifierDeviceInformation  = UUID(uuidString: "982e9ed2-9722-44f1-b954-2e38ce2f86ed")!
let ServiceIdentifierElectrocardiograph = UUID(uuidString: "323d0b9d-12b0-41b8-965a-98db654a0be7")!
let ServiceIdentifierEndoscope          = UUID(uuidString: "babe2430-a0fb-40ac-aad6-d95b7ca2eac3")!
let ServiceIdentifierOther              = UUID(uuidString: "60f3ef28-b920-4af6-859c-dcdfbf0249fe")!
let ServiceIdentifierPatientSimulator   = UUID(uuidString: "502b999c-0fb9-4f60-96ce-b1db1e1ef309")!
let ServiceIdentifierPulseOximeter      = UUID(uuidString: "a694d83f-dd2a-457f-bdba-ac38c3833f07")!
let ServiceIdentifierRespiration        = UUID(uuidString: "e43db823-f8cd-42ae-b05f-0fee33059667")!
let ServiceIdentifierSphygmograph       = UUID(uuidString: "7f6ead79-bf3c-4862-a52a-71e79ed69579")!
let ServiceIdentifierSphygmomanometer   = UUID(uuidString: "59b00761-4f41-4cd5-a32d-cdd3561ff1df")!
let ServiceIdentifierThermometer        = UUID(uuidString: "6b6f3ccc-20b6-4725-b5f1-360809e7dbe9")!

/**
 Service type.
 */
public let ServiceTypeDeviceInformation  = ServiceType(withIdentifier: ServiceIdentifierDeviceInformation)
public let ServiceTypeElectrocardiograph = ServiceType(withIdentifier: ServiceIdentifierElectrocardiograph)
public let ServiceTypeEndoscope          = ServiceType(withIdentifier: ServiceIdentifierEndoscope)
public let ServiceTypeOther              = ServiceType(withIdentifier: ServiceIdentifierOther)
public let ServiceTypePatientSimulator   = ServiceType(withIdentifier: ServiceIdentifierPatientSimulator)
public let ServiceTypePulseOximeter      = ServiceType(withIdentifier: ServiceIdentifierPulseOximeter)
public let ServiceTypeRespiration        = ServiceType(withIdentifier: ServiceIdentifierRespiration)
public let ServiceTypeSphygmograph       = ServiceType(withIdentifier: ServiceIdentifierSphygmograph)
public let ServiceTypeSphygmomanometer   = ServiceType(withIdentifier: ServiceIdentifierSphygmomanometer)
public let ServiceTypeThermometer        = ServiceType(withIdentifier: ServiceIdentifierThermometer)


// End of File
