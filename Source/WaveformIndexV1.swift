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


/**
 Waveform Index, Version 1

 Index values have a one-to-one mapping with time values.
 */
public typealias WaveformIndexV1 = Int64

/**
 WaveformIndexV1 extensions.
 */
public extension WaveformIndexV1 {

    /**
     Initialize index from a time.
     */
    public init(time: Time, resolution: Int64)
    {
        self = time / (Time.resolution / resolution)
    }

    /**
     Initialize index from a time interval.
     */
    public init(timeInterval: TimeInterval, resolution: Int64)
    {
        self = Time(timeInterval: timeInterval) / (Time.resolution / resolution)
    }

    /**
     Get time from index.
     */
    public func time(resolution: Int64) -> Time
    {
        return Time(self * (Time.resolution / resolution))
    }

    /**
     Get time interval from index.
     */
    public func timeInterval(resolution: Int64) -> TimeInterval
    {
        return time(resolution: resolution).timeInterval
    }

}


// End of File
