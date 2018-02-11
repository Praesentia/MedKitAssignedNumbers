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
 Waveform Encoder
 */
public struct WaveformEncoder {

    public enum Encoding: Int, Codable {
        case int16Coded
        case int32Coded
    }

    // MARK: - Properties
    public typealias Sample = Float
    public var encoding : Encoding = .int16Coded
    public let scale    : Float

    init(scale: Float)
    {
        self.scale = scale
    }

    func encode(data: [Sample]) throws -> Data
    {
        let fixedWidthIntegers : [Int16] = data.map { Int16($0 / scale).bigEndian }

        // convert to bytes
        let count = fixedWidthIntegers.count * MemoryLayout<Int16>.size
        let bytes = Data(bytes: UnsafePointer(fixedWidthIntegers), count: count)

        return bytes
    }

}


// End of File
