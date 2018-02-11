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


class PatientInfoV1Tests: XCTestCase {

    func testInitializer()
    {
        var patientName = NameV1()

        patientName.first = "John"
        patientName.last  = "Doe"

        let patientInfo = PatientInfoV1(identifier: "xyzzy", name: patientName)

        XCTAssertNil(patientInfo.birthdate)
        XCTAssertEqual("xyzzy",           patientInfo.identifier)
        XCTAssertEqual(patientName.first, patientInfo.name.first)
        XCTAssertEqual(patientName.last,  patientInfo.name.last)
        XCTAssertNil(patientInfo.photo)
    }

    func testCoding() throws
    {
        let generator = PatientInfoV1Generator()
        let encoder   = JSONEncoder()
        let decoder   = JSONDecoder()

        for patientInfo in generator.iterator() {
            let data   = try encoder.encode(patientInfo)
            let result = try decoder.decode(PatientInfoV1.self, from: data)

            XCTAssertEqual(patientInfo.birthdate,  result.birthdate)
            XCTAssertEqual(patientInfo.identifier, result.identifier)
            XCTAssertEqual(patientInfo.name,       result.name)
            XCTAssertEqual(patientInfo.photo,      result.photo)
        }
    }

}


// End of File
