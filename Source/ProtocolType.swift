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


import Foundation
import MedKitCore


/**
 Extends ProtocolType with a localized description.
 */
public extension ProtocolType {

    /**
     Localized description for the device type.
     */
    public var localizedDescription: String { return findLocalizedDescription(withIdentifier: identifier) }

    /**
     Localizable string representation for device types.
     */
    static let localizedDescriptions = [
        ProtocolIdentifierMIPV1 : NSLocalizedString("Medical Interoperability Protocol, Version 1", comment: "Protocol type description."),
    ]

    /**
     Find localized description.
     */
    func findLocalizedDescription(withIdentifier identifier: String) -> String
    {
        if let localizedDescription = ProtocolPluginManager.shared.findProtocol(forType: self)?.localizedDescription {
            return localizedDescription
        }
        return ProtocolType.localizedDescriptions[identifier] ?? identifier
    }

}

/**
 Protocol Identifiers
 */
let ProtocolIdentifierMIPV1 = "mip-v1"


/**
 Protocol Types
 */
public let ProtocolTypeMIPV1 = ProtocolType(withIdentifier: ProtocolIdentifierMIPV1)


// End of File
