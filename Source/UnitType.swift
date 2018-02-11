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


/**
 Unit type.
 */
public class UnitType: Codable {

    // MARK: - Properties

    /**
     Unit type identifier.
     */
    public let identifier: UUID

    // MARK: - Initializers

    /**
     Initialize instance.
     */
    public init()
    {
        self.identifier = UUID.null
    }

    /**
     Initialize instance.

     Initializes the UnitType from the resource identifier.

     - Parameters:
     - identifier: The unit type identifier.
     */
    public init(withIdentifier identifier: UUID)
    {
        self.identifier = identifier
    }

    // MARK: - Codable

    required public init(from decoder: Decoder) throws
    {
        let container = try decoder.singleValueContainer()
        identifier = try container.decode(UUID.self)
    }

    public func encode(to encoder: Encoder) throws
    {
        var container = encoder.singleValueContainer()
        try container.encode(identifier)
    }

}

/**
 Extends UnitType with a localized description, along with the Equatable and
 Hashable protocols.
 */
extension UnitType: Equatable, Hashable {

    // MARK: - Localizations

    /**
     Localized abbreviation for the unit type.
     */
    public var localizedAbbreviation: String { return UnitType.localizedAbbreviations[identifier] ?? identifier.uuidLowercase }

    /**
     Localized description for the unit type.
     */
    public var localizedDescription: String { return UnitType.localizedDescriptions[identifier] ?? identifier.uuidLowercase }

    // MARK: - Hashable

    public var hashValue: Int { return identifier.hashValue }

    // MARK: - Equatable

    public static func ==(lhs: UnitType, rhs: UnitType) -> Bool
    {
        return lhs.identifier == rhs.identifier
    }

    // MARK: - Private Properties

    private static let localizedAbbreviations = [
        UnitIdentifierBeatsPerMinute       : NSLocalizedString("bpm",    comment: "Unit type abbreviation."),
        UnitIdentifierBreathsPerMinute     : NSLocalizedString("bpm",    comment: "Unit type abbreviation."),
        UnitIdentifierCelsius              : NSLocalizedString("C",      comment: "Unit type abbreviation."),
        UnitIdentifierFahrenheit           : NSLocalizedString("F",      comment: "Unit type abbreviation."),
        UnitIdentifierMillilitersPerMinute : NSLocalizedString("mL/min", comment: "Unit type abbreviation."),
        UnitIdentifierMillivolt            : NSLocalizedString("mV",     comment: "Unit type abbreviation."),
        UnitIdentifierMMHg                 : NSLocalizedString("mmHg",   comment: "Unit type abbreviation."),
        UnitIdentifierPercent              : NSLocalizedString("%",      comment: "Unit type abbreviation."),
        UnitIdentifierUnitless             : NSLocalizedString("",       comment: "Unit type abbreviation.")
    ]

    private static let localizedDescriptions = [
        UnitIdentifierBeatsPerMinute       : NSLocalizedString("Beats Per Minute",       comment: "Unit type description."),
        UnitIdentifierBreathsPerMinute     : NSLocalizedString("Breaths Per Minute",     comment: "Unit type description."),
        UnitIdentifierCelsius              : NSLocalizedString("Celsius",                comment: "Unit type description."),
        UnitIdentifierFahrenheit           : NSLocalizedString("Fahrenheit",             comment: "Unit type description."),
        UnitIdentifierMillilitersPerMinute : NSLocalizedString("Milliliters Per Minute", comment: "Unit type description."),
        UnitIdentifierMillivolt            : NSLocalizedString("Millivolt",              comment: "Unit type description."),
        UnitIdentifierMMHg                 : NSLocalizedString("Millimeters of Mercury", comment: "Unit type description."),
        UnitIdentifierPercent              : NSLocalizedString("Percent",                comment: "Unit type description."),
        UnitIdentifierUnitless             : NSLocalizedString("Unitless",               comment: "Unit type description.")
    ]

}

/**
 Unit identifiers.
 */
let UnitIdentifierBeatsPerMinute       = UUID(uuidString: "c2e811aa-6550-4828-bcb7-c3c723f74cbc")!
let UnitIdentifierBreathsPerMinute     = UUID(uuidString: "b8e540a0-d5b5-4b62-8359-159fd7dbee87")!
let UnitIdentifierCelsius              = UUID(uuidString: "7983a868-b69f-4dbf-b5cd-19b6da94bc20")!
let UnitIdentifierFahrenheit           = UUID(uuidString: "f8ded7db-1ee1-4093-8199-2e557abe13c9")!
let UnitIdentifierMillilitersPerMinute = UUID(uuidString: "538ebec8-6183-4a08-9088-55ae911a2ced")!
let UnitIdentifierMillivolt            = UUID(uuidString: "303cf4c1-fbac-4d8d-8aae-e30bc39ff87a")!
let UnitIdentifierMMHg                 = UUID(uuidString: "e47d1de9-6e00-4430-9358-8d506d7607b8")!
let UnitIdentifierPercent              = UUID(uuidString: "e9d5a99f-c8a3-405d-acda-8e7fd42a9925")!
let UnitIdentifierUnitless             = UUID(uuidString: "28641491-f46b-4cf9-989f-fbfed93c48a7")!

/**
 Unit types.
 */
public let UnitTypeBeatsPerMinute       = UnitType(withIdentifier: UnitIdentifierBeatsPerMinute)
public let UnitTypeBreathsPerMinute     = UnitType(withIdentifier: UnitIdentifierBreathsPerMinute)
public let UnitTypeCelsius              = UnitType(withIdentifier: UnitIdentifierCelsius)
public let UnitTypeFahrenheit           = UnitType(withIdentifier: UnitIdentifierFahrenheit)
public let UnitTypeMillilitersPerMinute = UnitType(withIdentifier: UnitIdentifierMillilitersPerMinute)
public let UnitTypeMillivolt            = UnitType(withIdentifier: UnitIdentifierMillivolt)
public let UnitTypeMMHg                 = UnitType(withIdentifier: UnitIdentifierMMHg)
public let UnitTypePercent              = UnitType(withIdentifier: UnitIdentifierPercent)
public let UnitTypeUnitless             = UnitType(withIdentifier: UnitIdentifierUnitless)


// End of File
