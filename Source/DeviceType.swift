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
 Extends DeviceType with a localized description.
 */
public extension DeviceType {

    /**
     Localized description for the device type.
     */
    public var localizedDescription: String { return DeviceType.localizedDescriptions[name.lowercased()] ?? name }

    /**
     Localizable string representation for device types.
     */
    static let localizedDescriptions = [
        DeviceNameBridge.lowercased()             : NSLocalizedString(DeviceNameBridge,             comment: "Device type description."),
        DeviceNameElectrocardiograph.lowercased() : NSLocalizedString(DeviceNameElectrocardiograph, comment: "Device type description."),
        DeviceNameEndoscope.lowercased()          : NSLocalizedString(DeviceNameEndoscope,          comment: "Device type description."),
        DeviceNameOther.lowercased()              : NSLocalizedString(DeviceNameOther,              comment: "Device type description."),
        DeviceNamePatientSimulator.lowercased()   : NSLocalizedString(DeviceNamePatientSimulator,   comment: "Device type description."),
        DeviceNamePulseOximeter.lowercased()      : NSLocalizedString(DeviceNamePulseOximeter,      comment: "Device type description."),
        DeviceNameRespirationMonitor.lowercased() : NSLocalizedString(DeviceNameRespirationMonitor, comment: "Device type description."),
        DeviceNameSphygmograph.lowercased()       : NSLocalizedString(DeviceNameSphygmograph,       comment: "Device type description."),
        DeviceNameSphygmomanometer.lowercased()   : NSLocalizedString(DeviceNameSphygmomanometer,   comment: "Device type description."),
        DeviceNameThermometer.lowercased()        : NSLocalizedString(DeviceNameThermometer,        comment: "Device type description.")
    ]

}

/**
 Device Names
 */
let DeviceNameBridge             = "Bridge"
let DeviceNameElectrocardiograph = "Electrocardiograph"
let DeviceNameEndoscope          = "Endoscope"
let DeviceNameOther              = "Other"
let DeviceNamePatientSimulator   = "Patient Simulator"
let DeviceNamePulseOximeter      = "Pulse Oximeter"
let DeviceNameRespirationMonitor = "Respiration Monitor"
let DeviceNameSphygmograph       = "Sphygmograph"
let DeviceNameSphygmomanometer   = "Sphygmomanometer"
let DeviceNameThermometer        = "Thermometer"

/**
 Device Types
 */
public let DeviceTypeBridge             = DeviceType(named: DeviceNameBridge)
public let DeviceTypeElectrocardiograph = DeviceType(named: DeviceNameElectrocardiograph)
public let DeviceTypeEndoscope          = DeviceType(named: DeviceNameEndoscope)
public let DeviceTypeOther              = DeviceType(named: DeviceNameOther)
public let DeviceTypePatientSimulator   = DeviceType(named: DeviceNamePatientSimulator)
public let DeviceTypePulseOximeter      = DeviceType(named: DeviceNamePulseOximeter)
public let DeviceTypeRespirationMonitor = DeviceType(named: DeviceNameRespirationMonitor)
public let DeviceTypeSphygmograph       = DeviceType(named: DeviceNameSphygmograph)
public let DeviceTypeSphygmomanometer   = DeviceType(named: DeviceNameSphygmomanometer)
public let DeviceTypeThermometer        = DeviceType(named: DeviceNameThermometer)


// End of File
