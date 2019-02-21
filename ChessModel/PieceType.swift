//
//  PieceType.swift
//  ChessModel
//
//  Created by Peter Livesey on 2/19/19.
//  Copyright © 2019 Lockwood Productions, LLC. All rights reserved.
//

import Foundation

public enum PieceType: CustomStringConvertible {
    case king
    case queen
    case knight
    case bishop
    case rook
    case pawn

    public var description: String {
        switch self {
        case .king:
            return "King"
        case .queen:
            return "Queen"
        case .knight:
            return "Knight"
        case .bishop:
            return "Bishop"
        case .rook:
            return "Rook"
        case .pawn:
            return "Pawn"
        }
    }
}
