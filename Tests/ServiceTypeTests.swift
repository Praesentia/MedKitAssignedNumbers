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


import MedKitCore
import XCTest
@testable import MedKitAssignedNumbers


class ServiceTypeTests: XCTestCase {

    func testUUID()
    {
        XCTAssertEqual("982e9ed2-9722-44f1-b954-2e38ce2f86ed", ServiceIdentifierDeviceInformation.uuidLowercase)
        XCTAssertEqual("323d0b9d-12b0-41b8-965a-98db654a0be7", ServiceIdentifierElectrocardiograph.uuidLowercase)
        XCTAssertEqual("babe2430-a0fb-40ac-aad6-d95b7ca2eac3", ServiceIdentifierEndoscope.uuidLowercase)
        XCTAssertEqual("60f3ef28-b920-4af6-859c-dcdfbf0249fe", ServiceIdentifierOther.uuidLowercase)
        XCTAssertEqual("502b999c-0fb9-4f60-96ce-b1db1e1ef309", ServiceIdentifierPatientSimulator.uuidLowercase)
        XCTAssertEqual("a694d83f-dd2a-457f-bdba-ac38c3833f07", ServiceIdentifierPulseOximeter.uuidLowercase)
        XCTAssertEqual("e43db823-f8cd-42ae-b05f-0fee33059667", ServiceIdentifierRespiration.uuidLowercase)
        XCTAssertEqual("7f6ead79-bf3c-4862-a52a-71e79ed69579", ServiceIdentifierSphygmograph.uuidLowercase)
        XCTAssertEqual("59b00761-4f41-4cd5-a32d-cdd3561ff1df", ServiceIdentifierSphygmomanometer.uuidLowercase)
        XCTAssertEqual("6b6f3ccc-20b6-4725-b5f1-360809e7dbe9", ServiceIdentifierThermometer.uuidLowercase)
    }

    func testIdentifier()
    {
        XCTAssertEqual(ServiceIdentifierDeviceInformation,  ServiceTypeDeviceInformation.identifier)
        XCTAssertEqual(ServiceIdentifierElectrocardiograph, ServiceTypeElectrocardiograph.identifier)
        XCTAssertEqual(ServiceIdentifierEndoscope,          ServiceTypeEndoscope.identifier)
        XCTAssertEqual(ServiceIdentifierOther,              ServiceTypeOther.identifier)
        XCTAssertEqual(ServiceIdentifierPatientSimulator,   ServiceTypePatientSimulator.identifier)
        XCTAssertEqual(ServiceIdentifierPulseOximeter,      ServiceTypePulseOximeter.identifier)
        XCTAssertEqual(ServiceIdentifierRespiration,        ServiceTypeRespiration.identifier)
        XCTAssertEqual(ServiceIdentifierSphygmograph,       ServiceTypeSphygmograph.identifier)
        XCTAssertEqual(ServiceIdentifierSphygmomanometer,   ServiceTypeSphygmomanometer.identifier)
        XCTAssertEqual(ServiceIdentifierThermometer,        ServiceTypeThermometer.identifier)
    }

    func testLocalizedDescription()
    {
        XCTAssertEqual("Device Information", ServiceTypeDeviceInformation.localizedDescription)
        XCTAssertEqual("Electrocardiograph", ServiceTypeElectrocardiograph.localizedDescription)
        XCTAssertEqual("Endoscope",          ServiceTypeEndoscope.localizedDescription)
        XCTAssertEqual("Other",              ServiceTypeOther.localizedDescription)
        XCTAssertEqual("Patient Simulator",  ServiceTypePatientSimulator.localizedDescription)
        XCTAssertEqual("Pulse Oximeter",     ServiceTypePulseOximeter.localizedDescription)
        XCTAssertEqual("Respiration",        ServiceTypeRespiration.localizedDescription)
        XCTAssertEqual("Sphygmograph",       ServiceTypeSphygmograph.localizedDescription)
        XCTAssertEqual("Sphygmomanometer",   ServiceTypeSphygmomanometer.localizedDescription)
        XCTAssertEqual("Thermometer",        ServiceTypeThermometer.localizedDescription)
    }

}


// End of File
