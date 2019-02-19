//
//  ChessPosition.swift
//  ChessModel
//
//  Created by Peter Livesey on 2/19/19.
//  Copyright © 2019 Lockwood Productions, LLC. All rights reserved.
//

import Foundation

public struct ChessPosition {
    let board: [[ChessPiece?]]

    // rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1
    public init(fen: String) throws {
        var board = [[ChessPiece?]](repeating: [ChessPiece?](repeating: nil, count: 8), count: 8)

        var finishedPieces = false
        var y = 7
        var x = 0
        for character in fen {
            if finishedPieces {
                // TODO: Parse this
            } else {
                switch character {
                case "1":
                    x += 1
                case "2":
                    x += 2
                case "3":
                    x += 3
                case "4":
                    x += 4
                case "5":
                    x += 5
                case "6":
                    x += 6
                case "7":
                    x += 7
                case "8":
                    x += 8
                case "/":
                    y -= 1
                    x = 0
                case " ":
                    finishedPieces = true
                default:
                    if let piece = ChessPosition.piece(from: character) {
                        board[x][y] = piece
                        x += 1
                    } else {
                        throw ChessModelError(message: "Invalid character found in FEN before a space: \(character)")
                    }

                }
            }
        }

        self.board = board
    }

    static func piece(from c: Character) -> ChessPiece? {
        switch c {
        case "k": return ChessPiece(type: .king, color: .black)
        case "K": return ChessPiece(type: .king, color: .white)
        case "q": return ChessPiece(type: .queen, color: .black)
        case "Q": return ChessPiece(type: .queen, color: .white)
        case "n": return ChessPiece(type: .knight, color: .black)
        case "N": return ChessPiece(type: .knight, color: .white)
        case "b": return ChessPiece(type: .bishop, color: .black)
        case "B": return ChessPiece(type: .bishop, color: .white)
        case "r": return ChessPiece(type: .rook, color: .black)
        case "R": return ChessPiece(type: .rook, color: .white)
        case "p": return ChessPiece(type: .pawn, color: .black)
        case "P": return ChessPiece(type: .pawn, color: .white)
        default:
            return nil
        }
    }

    public func piece(atX x: Int, y: Int) -> ChessPiece? {
        assert(x >= 0 && x < 8 && y >= 0 && y < 8, "You must specify a board location that's greater than zero and less than 8")
        return board[x][y]
    }
}
