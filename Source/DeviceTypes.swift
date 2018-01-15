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


public extension DeviceType {

    /**
     Localized description for the device type.
     */
    public var localizedDescription: String { return DeviceType.localizedDescriptions[normalizedName] ?? name }

    /**
     Localizable string representation for device types.
     */
    static let localizedDescriptions = [
        "other"               : NSLocalizedString("Other",               comment: "Device type description."),
        "bridge"              : NSLocalizedString("Bridge",              comment: "Device type description."),
        "electrocardiograph"  : NSLocalizedString("Electrocardiograph",  comment: "Device type description."),
        "endoscope"           : NSLocalizedString("Endoscope",           comment: "Device type description."),
        "patient simulator"   : NSLocalizedString("Patient Simulator",   comment: "Device type description."),
        "pulse oximeter"      : NSLocalizedString("Pulse Oximeter",      comment: "Device type description."),
        "respiration monitor" : NSLocalizedString("Respiration Monitor", comment: "Device type description."),
        "sphygmograph"        : NSLocalizedString("Sphygmograph",        comment: "Device type description."),
        "sphygmomanometer"    : NSLocalizedString("Sphygmomanometer",    comment: "Device type description."),
        "thermometer"         : NSLocalizedString("Thermometer",         comment: "Device type description.")
    ]

}

/**
 Type 5 UUID representation for the device types.
 */
public let DeviceTypeBridge             = DeviceType.identifier(from: "Bridge")
public let DeviceTypeElectrocardiograph = DeviceType.identifier(from: "Electrocardiograph")
public let DeviceTypeEndoscope          = DeviceType.identifier(from: "Endoscope")
public let DeviceTypeOther              = DeviceType.identifier(from: "Other")
public let DeviceTypePatientSimulator   = DeviceType.identifier(from: "Patient Simulator")
public let DeviceTypePulseOximeter      = DeviceType.identifier(from: "Pulse Oximeter")
public let DeviceTypeRespirationMonitor = DeviceType.identifier(from: "Respiration Monitor")
public let DeviceTypeSphygmograph       = DeviceType.identifier(from: "Sphygmograph")
public let DeviceTypeSphygmomanometer   = DeviceType.identifier(from: "Sphygmomanometer")
public let DeviceTypeThermometer        = DeviceType.identifier(from: "Thermometer")


// End of File
