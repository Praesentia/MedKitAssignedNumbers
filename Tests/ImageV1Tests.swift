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


class ImageV1Tests: XCTestCase {

    func testInitializer()
    {
        let image = ImageV1(named: "Foo")

        XCTAssertEqual(ImageV1.ImageType.symbolic, image.type)
        XCTAssertEqual(nil,   image.data)
        XCTAssertEqual("Foo", image.name)
    }

    func testCoding() throws
    {
        let generator = ImageV1Generator()
        let encoder   = JSONEncoder()
        let decoder   = JSONDecoder()

        for image in generator.iterator() {
            let data   = try encoder.encode(image)
            let result = try decoder.decode(ImageV1.self, from: data)

            XCTAssertEqual(image, result)
        }
    }

}


// End of File
