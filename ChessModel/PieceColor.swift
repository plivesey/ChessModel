//
//  PieceColor.swift
//  ChessModel
//
//  Created by Peter Livesey on 2/19/19.
//  Copyright © 2019 Lockwood Productions, LLC. All rights reserved.
//

import Foundation

public enum PieceColor {
    case white
    case black

    public var opposite: PieceColor {
        return self == .white ? .black : .white
    }
}
