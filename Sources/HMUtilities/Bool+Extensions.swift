//
// HMUtilities
// Copyright (C) 2019 High-Mobility GmbH
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see http://www.gnu.org/licenses/.
//
// Please inquire about commercial licensing options at
// licensing@high-mobility.com
//
//
//  Bool+Extensions.swift
//  HMUtilities
//
//  Created by Mikk Rätsep on 15/03/2018.
//  Copyright © 2019 High Mobility GmbH. All rights reserved.
//

import Foundation


extension Bool: HMBytesConvertable {

    /// A single byte value representing the Bool.
    ///
    /// Returns `0x01` for `true`, and `0x00` for `false`.
    public var byte: UInt8 {
        return self ? 0x01 : 0x00
    }


    // MARK: HMBytesConvertable

    /// A single byte array representing the Bool.
    ///
    /// Returns `[0x01]` for `true`, and `[0x00]` for `false`.
    public var bytes: [UInt8] {
        return [self ? 0x01 : 0x00]
    }


    public init?(bytes: [UInt8]) {
        guard bytes.count == 1 else {
            return nil
        }

        self = bytes[0] == 0x01
    }
}
