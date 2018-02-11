/*
 -----------------------------------------------------------------------------
 This source file is part of MedKitAssignedNumbers.

 Copyright 2017-2018 Jon Griffeth

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


public protocol PatientV1Notification: Codable {

    var type: PatientV1NotificationType { get }

}

public extension PatientV1Notification {

    public typealias CodingKeys       = NotificationCodingKeysV1
    public typealias NotificationType = PatientV1NotificationType
    public typealias DidUpdate        = PatientV1DidUpdate

}


// End of File




