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


public extension UnitType {

    // MARK: - Properties

    /**
     Localized abbreviation for the unit type.
     */
    public var localizedAbbreviation: String { return UnitType.localizedAbbreviations[identifier] ?? identifier.uuidstring }

    /**
     Localized description for the unit type.
     */
    public var localizedDescription: String { return UnitType.localizedDescriptions[identifier] ?? identifier.uuidstring }

    // MARK: - Private Properties

    private static let localizedAbbreviations = [
        UnitTypeBeatsPerMinute       : NSLocalizedString("bpm",    comment: "Unit type abbreviation."),
        UnitTypeBreathsPerMinute     : NSLocalizedString("bpm",    comment: "Unit type abbreviation."),
        UnitTypeCelsius              : NSLocalizedString("°C",     comment: "Unit type abbreviation."),
        UnitTypeFahrenheit           : NSLocalizedString("°F",     comment: "Unit type abbreviation."),
        UnitTypeMillilitersPerMinute : NSLocalizedString("mL/min", comment: "Unit type abbreviation."),
        UnitTypeMillivolt            : NSLocalizedString("mV",     comment: "Unit type abbreviation."),
        UnitTypeMMHg                 : NSLocalizedString("mmHg",   comment: "Unit type abbreviation."),
        UnitTypePercent              : NSLocalizedString("%",      comment: "Unit type abbreviation."),
        UnitTypeUnitless             : NSLocalizedString("",       comment: "Unit type abbreviation.")
    ]

    private static let localizedDescriptions = [
        UnitTypeBeatsPerMinute       : NSLocalizedString("Beats Per Minute",       comment: "Unit type description."),
        UnitTypeBreathsPerMinute     : NSLocalizedString("Breaths Per Minute",     comment: "Unit type description."),
        UnitTypeCelsius              : NSLocalizedString("Degrees Celsius",        comment: "Unit type description."),
        UnitTypeFahrenheit           : NSLocalizedString("Degrees Fahrenheit",     comment: "Unit type description."),
        UnitTypeMillilitersPerMinute : NSLocalizedString("Milliliters Per Minute", comment: "Unit type description."),
        UnitTypeMillivolt            : NSLocalizedString("Millivolt",              comment: "Unit type description."),
        UnitTypeMMHg                 : NSLocalizedString("Millimeters of Mercury", comment: "Unit type description."),
        UnitTypePercent              : NSLocalizedString("Percent",                comment: "Unit type description."),
        UnitTypeUnitless             : NSLocalizedString("Unitless",               comment: "Unit type description.")
    ]

}

public let UnitTypeBeatsPerMinute       = UUID(uuidString: "c2e811aa-6550-4828-bcb7-c3c723f74cbc")!
public let UnitTypeBreathsPerMinute     = UUID(uuidString: "b8e540a0-d5b5-4b62-8359-159fd7dbee87")!
public let UnitTypeCelsius              = UUID(uuidString: "7983a868-b69f-4dbf-b5cd-19b6da94bc20")!
public let UnitTypeFahrenheit           = UUID(uuidString: "f8ded7db-1ee1-4093-8199-2e557abe13c9")!
public let UnitTypeMillilitersPerMinute = UUID(uuidString: "538ebec8-6183-4a08-9088-55ae911a2ced")!
public let UnitTypeMillivolt            = UUID(uuidString: "303cf4c1-fbac-4d8d-8aae-e30bc39ff87a")!
public let UnitTypeMMHg                 = UUID(uuidString: "e47d1de9-6e00-4430-9358-8d506d7607b8")!
public let UnitTypePercent              = UUID(uuidString: "e9d5a99f-c8a3-405d-acda-8e7fd42a9925")!
public let UnitTypeUnitless             = UUID(uuidString: "28641491-f46b-4cf9-989f-fbfed93c48a7")!


// End of File
