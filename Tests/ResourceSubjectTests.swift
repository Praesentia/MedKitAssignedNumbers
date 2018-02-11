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


class ResourceSubjectTests: XCTestCase {

    func testUUID()
    {
        XCTAssertEqual("1ba8c945-7195-4a2a-a875-0c98528eb637", ResourceSubjectIdentifierBloodOxygenSaturation.uuidLowercase)
        XCTAssertEqual("16ca57af-5f42-4008-a398-8a0917384e92", ResourceSubjectIdentifierBloodPressure.uuidLowercase)
        XCTAssertEqual("7e470049-f3aa-4bda-98ac-ce980137488c", ResourceSubjectIdentifierCamera.uuidLowercase)
        XCTAssertEqual("1a4a6fe7-4882-4737-b61b-0291de47d8e6", ResourceSubjectIdentifierECG.uuidLowercase)
        XCTAssertEqual("41f42113-5ba2-44d2-a3f4-d062f7bec929", ResourceSubjectIdentifierLocation.uuidLowercase)
        XCTAssertEqual("2fa67527-c69c-473a-b1a5-f9fdaf83b97a", ResourceSubjectIdentifierPatient.uuidLowercase)
        XCTAssertEqual("9d2b38b7-d170-4c0a-b76e-01177d79cc71", ResourceSubjectIdentifierPerfusionIndex.uuidLowercase)
        XCTAssertEqual("38948d8b-5d14-4c56-b77b-70813aa6404f", ResourceSubjectIdentifierPulseRate.uuidLowercase)
        XCTAssertEqual("e4775c0a-ce89-4eb0-b0fc-986e583b5530", ResourceSubjectIdentifierRespiration.uuidLowercase)
        XCTAssertEqual("23adef66-a104-4aee-b6b5-044a7b7707a5", ResourceSubjectIdentifierRespirationRate.uuidLowercase)
        XCTAssertEqual("580e291e-5637-47c7-8931-66812d107b0a", ResourceSubjectIdentifierSkinTemperature.uuidLowercase)
        XCTAssertEqual("2539cb22-2c7b-4a88-96ec-a189f2d0b28d", ResourceSubjectIdentifierSoftwareVersion.uuidLowercase)
    }

    func testIdentifier()
    {
        XCTAssertEqual(ResourceSubjectIdentifierBloodOxygenSaturation, ResourceSubjectBloodOxygenSaturation.identifier)
        XCTAssertEqual(ResourceSubjectIdentifierBloodPressure,         ResourceSubjectBloodPressure.identifier)
        XCTAssertEqual(ResourceSubjectIdentifierCamera,                ResourceSubjectCamera.identifier)
        XCTAssertEqual(ResourceSubjectIdentifierECG,                   ResourceSubjectECG.identifier)
        XCTAssertEqual(ResourceSubjectIdentifierLocation,              ResourceSubjectLocation.identifier)
        XCTAssertEqual(ResourceSubjectIdentifierPatient,               ResourceSubjectPatient.identifier)
        XCTAssertEqual(ResourceSubjectIdentifierPerfusionIndex,        ResourceSubjectPerfusionIndex.identifier)
        XCTAssertEqual(ResourceSubjectIdentifierPulseRate,             ResourceSubjectPulseRate.identifier)
        XCTAssertEqual(ResourceSubjectIdentifierRespiration,           ResourceSubjectRespiration.identifier)
        XCTAssertEqual(ResourceSubjectIdentifierRespirationRate,       ResourceSubjectRespirationRate.identifier)
        XCTAssertEqual(ResourceSubjectIdentifierSkinTemperature,       ResourceSubjectSkinTemperature.identifier)
        XCTAssertEqual(ResourceSubjectIdentifierSoftwareVersion,       ResourceSubjectSoftwareVersion.identifier)
    }

    func testLocalizedDescription()
    {
        XCTAssertEqual("Blood Oxygen Saturation", ResourceSubjectBloodOxygenSaturation.localizedDescription)
        XCTAssertEqual("Blood Pressure",          ResourceSubjectBloodPressure.localizedDescription)
        XCTAssertEqual("Camera",                  ResourceSubjectCamera.localizedDescription)
        XCTAssertEqual("ECG",                     ResourceSubjectECG.localizedDescription)
        XCTAssertEqual("Location",                ResourceSubjectLocation.localizedDescription)
        XCTAssertEqual("Patient",                 ResourceSubjectPatient.localizedDescription)
        XCTAssertEqual("Perfusion Index",         ResourceSubjectPerfusionIndex.localizedDescription)
        XCTAssertEqual("Pulse Rate",              ResourceSubjectPulseRate.localizedDescription)
        XCTAssertEqual("Respiration",             ResourceSubjectRespiration.localizedDescription)
        XCTAssertEqual("Respiration Rate",        ResourceSubjectRespirationRate.localizedDescription)
        XCTAssertEqual("Skin Temperature",        ResourceSubjectSkinTemperature.localizedDescription)
        XCTAssertEqual("Software Version",        ResourceSubjectSoftwareVersion.localizedDescription)
    }

}


// End of File
