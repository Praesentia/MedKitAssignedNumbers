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


class NameV1Tests: XCTestCase {

    func testStaticProperties()
    {
        XCTAssertEqual(NameV1.Format.firstLast, NameV1.defaultFormat)
    }

    func testInitializer()
    {
        let name = NameV1()

        XCTAssertEqual(nil, name.first)
        XCTAssertEqual(nil, name.last)
    }

    func testFormatting()
    {
        let defaultFormat = NameV1.defaultFormat
        var name          = NameV1()

        defer { NameV1.defaultFormat = defaultFormat }

        name.first = "John"
        name.last  = "Doe"

        NameV1.defaultFormat = .firstLast
        XCTAssertEqual("John Doe", name.formatted)

        NameV1.defaultFormat = .lastFirst
        XCTAssertEqual("Doe, John", name.formatted)

        XCTAssertEqual("John Doe",  name.format(format: .firstLast))
        XCTAssertEqual("Doe, John", name.format(format: .lastFirst))
    }

    func testCoding() throws
    {
        let generator = NameV1Generator()
        let encoder   = JSONEncoder()
        let decoder   = JSONDecoder()

        for name in generator.iterator() {
            let data   = try encoder.encode(name)
            let result = try decoder.decode(NameV1.self, from: data)

            XCTAssertEqual(name, result)
        }
    }

}


// End of File
