//
//  ChessModelTests.swift
//  ChessModelTests
//
//  Created by Peter Livesey on 2/19/19.
//  Copyright © 2019 Lockwood Productions, LLC. All rights reserved.
//

import XCTest
@testable import ChessModel

class ChessModelTests: XCTestCase {

    func testStartPosition() {
        let fen = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"
        let position = try! ChessPosition(fen: fen)

        XCTAssertEqual(position.piece(atX: 0, y: 0)!.color, .white)
        XCTAssertEqual(position.piece(atX: 0, y: 0)!.type, .rook)
        XCTAssertEqual(position.piece(atX: 1, y: 0)!.color, .white)
        XCTAssertEqual(position.piece(atX: 1, y: 0)!.type, .knight)
        XCTAssertEqual(position.piece(atX: 2, y: 0)!.color, .white)
        XCTAssertEqual(position.piece(atX: 2, y: 0)!.type, .bishop)
        XCTAssertEqual(position.piece(atX: 3, y: 0)!.color, .white)
        XCTAssertEqual(position.piece(atX: 3, y: 0)!.type, .queen)
        XCTAssertEqual(position.piece(atX: 4, y: 0)!.color, .white)
        XCTAssertEqual(position.piece(atX: 4, y: 0)!.type, .king)
        XCTAssertEqual(position.piece(atX: 5, y: 0)!.color, .white)
        XCTAssertEqual(position.piece(atX: 5, y: 0)!.type, .bishop)
        XCTAssertEqual(position.piece(atX: 6, y: 0)!.color, .white)
        XCTAssertEqual(position.piece(atX: 6, y: 0)!.type, .knight)
        XCTAssertEqual(position.piece(atX: 7, y: 0)!.color, .white)
        XCTAssertEqual(position.piece(atX: 7, y: 0)!.type, .rook)

        for x in 0..<7 {
            XCTAssertEqual(position.piece(atX: x, y: 1)!.color, .white)
            XCTAssertEqual(position.piece(atX: x, y: 1)!.type, .pawn)
        }

        for x in 0..<7 {
            for y in 2..<5 {
                XCTAssertNil(position.piece(atX: x, y: y))
            }
        }

        XCTAssertEqual(position.piece(atX: 0, y: 7)!.color, .black)
        XCTAssertEqual(position.piece(atX: 0, y: 7)!.type, .rook)
        XCTAssertEqual(position.piece(atX: 1, y: 7)!.color, .black)
        XCTAssertEqual(position.piece(atX: 1, y: 7)!.type, .knight)
        XCTAssertEqual(position.piece(atX: 2, y: 7)!.color, .black)
        XCTAssertEqual(position.piece(atX: 2, y: 7)!.type, .bishop)
        XCTAssertEqual(position.piece(atX: 3, y: 7)!.color, .black)
        XCTAssertEqual(position.piece(atX: 3, y: 7)!.type, .queen)
        XCTAssertEqual(position.piece(atX: 4, y: 7)!.color, .black)
        XCTAssertEqual(position.piece(atX: 4, y: 7)!.type, .king)
        XCTAssertEqual(position.piece(atX: 5, y: 7)!.color, .black)
        XCTAssertEqual(position.piece(atX: 5, y: 7)!.type, .bishop)
        XCTAssertEqual(position.piece(atX: 6, y: 7)!.color, .black)
        XCTAssertEqual(position.piece(atX: 6, y: 7)!.type, .knight)
        XCTAssertEqual(position.piece(atX: 7, y: 7)!.color, .black)
        XCTAssertEqual(position.piece(atX: 7, y: 7)!.type, .rook)

        for x in 0..<7 {
            XCTAssertEqual(position.piece(atX: x, y: 6)!.color, .black)
            XCTAssertEqual(position.piece(atX: x, y: 1)!.type, .pawn)
        }

    }
}
