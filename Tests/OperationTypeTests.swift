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


import SecurityKit
import XCTest
@testable import MedKitAssignedNumbers


class OperationTypeTests: XCTestCase {

    func testUUID()
    {
        XCTAssertEqual("089f991d-3941-43b8-ae74-9af7d3901c04", OperationIdentifierDeviceGetProfile.uuidLowercase)
        XCTAssertEqual("72bac99f-a496-4dfd-8e9b-d92d27a9046d", OperationIdentifierDeviceUpdateName.uuidLowercase)
        XCTAssertEqual("e3f90b84-df64-49e8-a22f-355e9f239297", OperationIdentifierServiceUpdateName.uuidLowercase)
        XCTAssertEqual("d8a9cef2-b192-4cb6-80db-04109d5e1425", OperationIdentifierResourceEnableNotification.uuidLowercase)
        XCTAssertEqual("132d9e13-cdb0-4082-b055-04df73cd103d", OperationIdentifierResourceReadValue.uuidLowercase)
        XCTAssertEqual("7d03083e-5bb2-4184-8c70-5b1f5fc92d3b", OperationIdentifierResourceWriteValue.uuidLowercase)
    }

    func testIdentifier()
    {
        XCTAssertEqual(OperationIdentifierDeviceGetProfile,           OperationTypeDeviceGetProfile.identifier)
        XCTAssertEqual(OperationIdentifierDeviceUpdateName,           OperationTypeDeviceUpdateName.identifier)
        XCTAssertEqual(OperationIdentifierServiceUpdateName,          OperationTypeServiceUpdateName.identifier)
        XCTAssertEqual(OperationIdentifierResourceEnableNotification, OperationTypeResourceEnableNotification.identifier)
        XCTAssertEqual(OperationIdentifierResourceReadValue,          OperationTypeResourceReadValue.identifier)
        XCTAssertEqual(OperationIdentifierResourceWriteValue,         OperationTypeResourceWriteValue.identifier)
    }

    func testLocalizedDescription()
    {
        XCTAssertEqual("Get device profile",           OperationTypeDeviceGetProfile.localizedDescription)
        XCTAssertEqual("Update device name",           OperationTypeDeviceUpdateName.localizedDescription)
        XCTAssertEqual("Update service name",          OperationTypeServiceUpdateName.localizedDescription)
        XCTAssertEqual("Enable resource notification", OperationTypeResourceEnableNotification.localizedDescription)
        XCTAssertEqual("Read resource value",          OperationTypeResourceReadValue.localizedDescription)
        XCTAssertEqual("Write resource value",         OperationTypeResourceWriteValue.localizedDescription)
    }

}


// End of File
