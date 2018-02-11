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


class UnitTypeTests: XCTestCase {

    func testUUID()
    {
        XCTAssertEqual("c2e811aa-6550-4828-bcb7-c3c723f74cbc", UnitIdentifierBeatsPerMinute.uuidLowercase)
        XCTAssertEqual("b8e540a0-d5b5-4b62-8359-159fd7dbee87", UnitIdentifierBreathsPerMinute.uuidLowercase)
        XCTAssertEqual("7983a868-b69f-4dbf-b5cd-19b6da94bc20", UnitIdentifierCelsius.uuidLowercase)
        XCTAssertEqual("f8ded7db-1ee1-4093-8199-2e557abe13c9", UnitIdentifierFahrenheit.uuidLowercase)
        XCTAssertEqual("538ebec8-6183-4a08-9088-55ae911a2ced", UnitIdentifierMillilitersPerMinute.uuidLowercase)
        XCTAssertEqual("303cf4c1-fbac-4d8d-8aae-e30bc39ff87a", UnitIdentifierMillivolt.uuidLowercase)
        XCTAssertEqual("e47d1de9-6e00-4430-9358-8d506d7607b8", UnitIdentifierMMHg.uuidLowercase)
        XCTAssertEqual("e9d5a99f-c8a3-405d-acda-8e7fd42a9925", UnitIdentifierPercent.uuidLowercase)
        XCTAssertEqual("28641491-f46b-4cf9-989f-fbfed93c48a7", UnitIdentifierUnitless.uuidLowercase)
    }

    func testIdentifier()
    {
        XCTAssertEqual(UnitIdentifierBeatsPerMinute,       UnitTypeBeatsPerMinute.identifier)
        XCTAssertEqual(UnitIdentifierBreathsPerMinute,     UnitTypeBreathsPerMinute.identifier)
        XCTAssertEqual(UnitIdentifierCelsius,              UnitTypeCelsius.identifier)
        XCTAssertEqual(UnitIdentifierFahrenheit,           UnitTypeFahrenheit.identifier)
        XCTAssertEqual(UnitIdentifierMillilitersPerMinute, UnitTypeMillilitersPerMinute.identifier)
        XCTAssertEqual(UnitIdentifierMillivolt,            UnitTypeMillivolt.identifier)
        XCTAssertEqual(UnitIdentifierMMHg,                 UnitTypeMMHg.identifier)
        XCTAssertEqual(UnitIdentifierPercent,              UnitTypePercent.identifier)
        XCTAssertEqual(UnitIdentifierUnitless,             UnitTypeUnitless.identifier)
    }

    func testLocalizedAbbreviation()
    {
        XCTAssertEqual("bpm",    UnitTypeBeatsPerMinute.localizedAbbreviation)
        XCTAssertEqual("bpm",    UnitTypeBreathsPerMinute.localizedAbbreviation)
        XCTAssertEqual("C",      UnitTypeCelsius.localizedAbbreviation)
        XCTAssertEqual("F",      UnitTypeFahrenheit.localizedAbbreviation)
        XCTAssertEqual("mL/min", UnitTypeMillilitersPerMinute.localizedAbbreviation)
        XCTAssertEqual("mV",     UnitTypeMillivolt.localizedAbbreviation)
        XCTAssertEqual("mmHg",   UnitTypeMMHg.localizedAbbreviation)
        XCTAssertEqual("%",      UnitTypePercent.localizedAbbreviation)
        XCTAssertEqual("",       UnitTypeUnitless.localizedAbbreviation)
    }

    func testLocalizedDescription()
    {
        XCTAssertEqual("Beats Per Minute",       UnitTypeBeatsPerMinute.localizedDescription)
        XCTAssertEqual("Breaths Per Minute",     UnitTypeBreathsPerMinute.localizedDescription)
        XCTAssertEqual("Celsius",                UnitTypeCelsius.localizedDescription)
        XCTAssertEqual("Fahrenheit",             UnitTypeFahrenheit.localizedDescription)
        XCTAssertEqual("Milliliters Per Minute", UnitTypeMillilitersPerMinute.localizedDescription)
        XCTAssertEqual("Millivolt",              UnitTypeMillivolt.localizedDescription)
        XCTAssertEqual("Millimeters of Mercury", UnitTypeMMHg.localizedDescription)
        XCTAssertEqual("Percent",                UnitTypePercent.localizedDescription)
        XCTAssertEqual("Unitless",               UnitTypeUnitless.localizedDescription)
    }

}


// End of File
