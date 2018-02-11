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
 Waveform, Version 1
 */
public struct WaveformV1: WaveformInterval, Codable {

    public enum Encoding: Int, Codable {
        case int16Coded
        case int32Coded
    }

    // MARK: - Properties
    public var encoding : Encoding = .int16Coded
    public var index    : Index
    public var samples  : [Sample]
    public var units    : UnitType
    public var scale    : Sample = 1.0 / 128.0

    // MARK: - Private
    private enum CodingKeys: CodingKey {
        case encoding
        case index
        case samples
        case units
    }

    // MARK: - Initializers

    public init(index: Index, samples: [Sample], units: UnitType)
    {
        self.encoding = .int16Coded
        self.index    = index
        self.samples  = samples
        self.units    = units
    }

    // MARK: - Codable

    public init(from decoder: Decoder) throws
    {
        let wdecoder  = WaveformDecoder(scale: scale)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let base64    = try container.decode(String.self, forKey: .samples)

        encoding    = try container.decode(Encoding.self, forKey: .encoding)
        index       = try container.decode(Index.self,    forKey: .index)
        samples     = try wdecoder.decode(from: base64)
        units       = try container.decode(UnitType.self, forKey: .units)
    }

    public func encode(to encoder: Encoder) throws
    {
        let wencoder  = WaveformEncoder(scale: scale)
        var container = encoder.container(keyedBy: CodingKeys.self)
        let base64    = try wencoder.encode(data: samples).base64EncodedString()

        try container.encode(encoding, forKey: .encoding)
        try container.encode(index,    forKey: .index)
        try container.encode(base64,   forKey: .samples)
        try container.encode(units,    forKey: .units)

    }

}


// End of File
