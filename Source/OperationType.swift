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
import SecurityKit


/**
 Extends OperationType with a localized description.
 */
public extension OperationType {

    /**
     Localized description for the service type.
     */
    public var localizedDescription: String  { return OperationType.localizedDescriptions[identifier] ?? identifier.uuidLowercase }

    /**
     Localizable string representation for service types.
     */
    static let localizedDescriptions = [
        OperationIdentifierDeviceGetProfile           : NSLocalizedString("Get device profile",           comment: "Operation type description."),
        OperationIdentifierDeviceUpdateName           : NSLocalizedString("Update device name",           comment: "Operation type description."),
        OperationIdentifierServiceUpdateName          : NSLocalizedString("Update service name",          comment: "Operation type description."),
        OperationIdentifierResourceEnableNotification : NSLocalizedString("Enable resource notification", comment: "Operation type description."),
        OperationIdentifierResourceReadValue          : NSLocalizedString("Read resource value",          comment: "Operation type description."),
        OperationIdentifierResourceWriteValue         : NSLocalizedString("Write resource value",         comment: "Operation type description."),
    ]

}

/**
 Common operation identifiers.
 */
let OperationIdentifierDeviceGetProfile           = UUID(uuidString: "089f991d-3941-43b8-ae74-9af7d3901c04")!
let OperationIdentifierDeviceUpdateName           = UUID(uuidString: "72bac99f-a496-4dfd-8e9b-d92d27a9046d")!
let OperationIdentifierServiceUpdateName          = UUID(uuidString: "e3f90b84-df64-49e8-a22f-355e9f239297")!
let OperationIdentifierResourceEnableNotification = UUID(uuidString: "d8a9cef2-b192-4cb6-80db-04109d5e1425")!
let OperationIdentifierResourceReadValue          = UUID(uuidString: "132d9e13-cdb0-4082-b055-04df73cd103d")!
let OperationIdentifierResourceWriteValue         = UUID(uuidString: "7d03083e-5bb2-4184-8c70-5b1f5fc92d3b")!

/**
 Common operation types.
 */
public let OperationTypeDeviceGetProfile           = OperationType(withIdentifier: OperationIdentifierDeviceGetProfile)
public let OperationTypeDeviceUpdateName           = OperationType(withIdentifier: OperationIdentifierDeviceUpdateName)
public let OperationTypeServiceUpdateName          = OperationType(withIdentifier: OperationIdentifierServiceUpdateName)
public let OperationTypeResourceEnableNotification = OperationType(withIdentifier: OperationIdentifierResourceEnableNotification)
public let OperationTypeResourceReadValue          = OperationType(withIdentifier: OperationIdentifierResourceReadValue)
public let OperationTypeResourceWriteValue         = OperationType(withIdentifier: OperationIdentifierResourceWriteValue)


// End of File
