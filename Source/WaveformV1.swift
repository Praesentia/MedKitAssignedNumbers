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


public struct WaveformV1<T: FixedWidthInteger>: Codable {

    // MARK: - Properties
    public typealias Sample = Float
    public typealias Index  = WaveformIndex

    public let index   : Index
    public let samples : [Sample]
    public let units   : UnitType
    public let scale   : Sample = 0.01

    // MARK: - Private
    private enum CodingKeys: CodingKey {
        case index
        case samples
        case units
    }

    private let maxValue : Sample
    private let minValue : Sample

    // MARK: - Initializers

    public init(index: Index, samples: [Sample], units: UnitType)
    {
        self.index       = index
        self.samples     = samples
        self.maxValue    = Sample(Int(T.max)) * scale
        self.minValue    = Sample(Int(T.min)) * scale
        self.units       = units
    }

    // MARK: - Codable

    public init(from decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let base64    = try container.decode(String.self, forKey: .samples)

        maxValue    = Sample(Int(T.max)) * scale
        minValue    = Sample(Int(T.min)) * scale
        index       = try container.decode(Index.self, forKey: .index)
        samples     = try WaveformV1<T>.decode(base64Encoded: base64, scale: scale)
        units       = try container.decode(UnitType.self, forKey: .units)
    }

    public func encode(to encoder: Encoder) throws
    {
        var container = encoder.container(keyedBy: CodingKeys.self)
        let base64    = try encode(data: samples, scale: scale)

        try container.encode(index,  forKey: .index)
        try container.encode(base64, forKey: .samples)
        try container.encode(units,  forKey: .units)
    }

    // MARK: - Private

    private func isInRange(_ value: Sample) -> Bool
    {
        return (value >= minValue) && (value <= maxValue)
    }

    private static func decode(base64Encoded string: String, scale: Sample) throws -> [Sample]
    {
        var bytes = Data(base64Encoded: string)!

        let fixedWidthIntegers = bytes.withUnsafeBytes { Array(UnsafeBufferPointer<T>(start: $0, count: bytes.count / MemoryLayout<T>.size)) }
        let data               = fixedWidthIntegers.map { Sample(Int(bigEndian: Int($0))) * scale }

        return data
    }

    private func encode(data: [Sample], scale: Sample) throws -> String
    {
        let fixedWidthIntegers : [T] = data.map { T($0 / scale).bigEndian }

        // convert to bytes
        let count = fixedWidthIntegers.count * MemoryLayout<T>.size
        let data  = Data(bytes: UnsafePointer(fixedWidthIntegers), count: count)

        return data.base64EncodedString()
    }

}


// End of File

