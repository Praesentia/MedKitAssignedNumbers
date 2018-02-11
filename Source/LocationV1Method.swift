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


public protocol LocationV1Method: Codable {

    var type: LocationV1MethodType { get }

}

public extension LocationV1Method {

    public typealias CodingKeys = MethodCodingKeysV1
    public typealias MethodType = LocationV1MethodType
    public typealias ReadValue  = LocationV1ReadValue
    public typealias WriteValue = LocationV1WriteValue

}


// End of File
