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


class ResourceProtocolTypeTests: XCTestCase {

    func testUUID()
    {
        XCTAssertEqual("77d23127-65e0-4946-9a84-f70467c13783", ResourceProtocolIdentifierAlert.uuidLowercase)
        XCTAssertEqual("3948450e-ed95-4433-a02b-4b650cb5cf94", ResourceProtocolIdentifierBloodPressure.uuidLowercase)
        XCTAssertEqual("b1b3bf84-dc7b-4866-9b86-65274b60f29f", ResourceProtocolIdentifierCamera.uuidLowercase)
        XCTAssertEqual("523a4cc1-aa68-4d30-8829-7b815e42e487", ResourceProtocolIdentifierLocation.uuidLowercase)
        XCTAssertEqual("0f71de24-e436-4a75-b7a0-2929d2e9b5e2", ResourceProtocolIdentifierMeasurement.uuidLowercase)
        XCTAssertEqual("292ad6e5-324d-4339-b494-926b03048ee1", ResourceProtocolIdentifierPatient.uuidLowercase)
        XCTAssertEqual("55a3c23d-bf52-4158-a645-06ba85fec14e", ResourceProtocolIdentifierWaveform.uuidLowercase)
    }

    func testIdentifier()
    {
        XCTAssertEqual(ResourceProtocolIdentifierAlert,         ResourceProtocolTypeAlert.identifier)
        XCTAssertEqual(ResourceProtocolIdentifierBloodPressure, ResourceProtocolTypeBloodPressure.identifier)
        XCTAssertEqual(ResourceProtocolIdentifierCamera,        ResourceProtocolTypeCamera.identifier)
        XCTAssertEqual(ResourceProtocolIdentifierLocation,      ResourceProtocolTypeLocation.identifier)
        XCTAssertEqual(ResourceProtocolIdentifierMeasurement,   ResourceProtocolTypeMeasurement.identifier)
        XCTAssertEqual(ResourceProtocolIdentifierPatient,       ResourceProtocolTypePatient.identifier)
        XCTAssertEqual(ResourceProtocolIdentifierWaveform,      ResourceProtocolTypeWaveform.identifier)
    }

    func testLocalizedDescription()
    {
        XCTAssertEqual("Alert",          ResourceProtocolTypeAlert.localizedDescription)
        XCTAssertEqual("Blood Pressure", ResourceProtocolTypeBloodPressure.localizedDescription)
        XCTAssertEqual("Camera",         ResourceProtocolTypeCamera.localizedDescription)
        XCTAssertEqual("Location",       ResourceProtocolTypeLocation.localizedDescription)
        XCTAssertEqual("Measurement",    ResourceProtocolTypeMeasurement.localizedDescription)
        XCTAssertEqual("Patient",        ResourceProtocolTypePatient.localizedDescription)
        XCTAssertEqual("Waveform",       ResourceProtocolTypeWaveform.localizedDescription)
    }

}


// End of File
