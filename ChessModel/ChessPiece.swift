//
//  ChessPiece.swift
//  ChessModel
//
//  Created by Peter Livesey on 2/19/19.
//  Copyright © 2019 Lockwood Productions, LLC. All rights reserved.
//

import Foundation

public struct ChessPiece: CustomStringConvertible {
    public let type: PieceType
    public let color: PieceColor

    public init(type: PieceType, color: PieceColor) {
        self.type = type
        self.color = color
    }

    public var description: String {
        return "\(color) \(type)"
    }
}
