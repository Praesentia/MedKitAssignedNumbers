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
import MedKitCore


public typealias WaveformIndex = Int64

public extension WaveformIndex {

    public init(time: Time, resolution: Int64)
    {
        self = time / resolution
    }

    public init(timeInterval: TimeInterval, resolution: Int64)
    {
        self = Time(timeInterval: timeInterval) / resolution
    }

    public func time(resolution: Int64) -> Time
    {
        return Time(self * resolution)
    }

    public func timeInterval(resolution: Int64) -> TimeInterval
    {
        return Time(self * resolution).timeInterval
    }

}

// End of File
