/*
 -----------------------------------------------------------------------------
 This source file is part of MedKitAssignedNumbers.

 Copyright 2018 Jon Griffeth

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


import XCTest
@testable import MedKitAssignedNumbers


class DeviceTypeTests: XCTestCase {

    func testString()
    {
        XCTAssertEqual("Bridge",              DeviceNameBridge)
        XCTAssertEqual("Electrocardiograph",  DeviceNameElectrocardiograph)
        XCTAssertEqual("Endoscope",           DeviceNameEndoscope)
        XCTAssertEqual("Other",               DeviceNameOther)
        XCTAssertEqual("Patient Simulator",   DeviceNamePatientSimulator)
        XCTAssertEqual("Pulse Oximeter",      DeviceNamePulseOximeter)
        XCTAssertEqual("Respiration Monitor", DeviceNameRespirationMonitor)
        XCTAssertEqual("Sphygmograph",        DeviceNameSphygmograph)
        XCTAssertEqual("Sphygmomanometer",    DeviceNameSphygmomanometer)
        XCTAssertEqual("Thermometer",         DeviceNameThermometer)
    }

    func testName()
    {
        XCTAssertEqual(DeviceNameBridge,             DeviceTypeBridge.name)
        XCTAssertEqual(DeviceNameElectrocardiograph, DeviceTypeElectrocardiograph.name)
        XCTAssertEqual(DeviceNameEndoscope,          DeviceTypeEndoscope.name)
        XCTAssertEqual(DeviceNameOther,              DeviceTypeOther.name)
        XCTAssertEqual(DeviceNamePatientSimulator,   DeviceTypePatientSimulator.name)
        XCTAssertEqual(DeviceNamePulseOximeter,      DeviceTypePulseOximeter.name)
        XCTAssertEqual(DeviceNameRespirationMonitor, DeviceTypeRespirationMonitor.name)
        XCTAssertEqual(DeviceNameSphygmograph,       DeviceTypeSphygmograph.name)
        XCTAssertEqual(DeviceNameSphygmomanometer,   DeviceTypeSphygmomanometer.name)
        XCTAssertEqual(DeviceNameThermometer,        DeviceTypeThermometer.name)
    }

    func testLocalizedDescription()
    {
        XCTAssertEqual("Bridge",              DeviceTypeBridge.localizedDescription)
        XCTAssertEqual("Electrocardiograph",  DeviceTypeElectrocardiograph.localizedDescription)
        XCTAssertEqual("Endoscope",           DeviceTypeEndoscope.localizedDescription)
        XCTAssertEqual("Other",               DeviceTypeOther.localizedDescription)
        XCTAssertEqual("Patient Simulator",   DeviceTypePatientSimulator.localizedDescription)
        XCTAssertEqual("Pulse Oximeter",      DeviceTypePulseOximeter.localizedDescription)
        XCTAssertEqual("Respiration Monitor", DeviceTypeRespirationMonitor.localizedDescription)
        XCTAssertEqual("Sphygmograph",        DeviceTypeSphygmograph.localizedDescription)
        XCTAssertEqual("Sphygmomanometer",    DeviceTypeSphygmomanometer.localizedDescription)
        XCTAssertEqual("Thermometer",         DeviceTypeThermometer.localizedDescription)
    }

}


// End of File
