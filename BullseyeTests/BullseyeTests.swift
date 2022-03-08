//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by jbenetts on 3/8/22.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
    
    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testScorePositive(){
        let guess = game.randomTarget + 5
        let score = game.returnPoints(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative(){
        let guess = game.randomTarget - 5
        let score = game.returnPoints(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
}
