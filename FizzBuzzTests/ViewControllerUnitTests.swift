//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Sean Blundell on 21/05/2017.
//  Copyright © 2017 Sean Blundell. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
  
    var viewController : ViewController!
  
    override func setUp() {
        super.setUp()
      
      let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
      viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
      UIApplication.shared.keyWindow!.rootViewController = viewController
      
      let _ = viewController.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
  func testMove1IncrementsScore() {
    viewController.play(move: "1")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 1)
  }
  
  func testMove2IncrementScore() {
    viewController.play(move: "1")
    viewController.play(move: "2")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 2)
  }
  
  func testFizzIncrementScore() {
    viewController.game?.score = 2
    viewController.play(move: "Fizz")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 3)
  }
  
  func testBuzzIncrementScore() {
    viewController.game?.score = 4
    viewController.play(move: "Buzz")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 5)
  }
  
  func testFizzBuzzIncrementScore() {
    viewController.game?.score = 14
    viewController.play(move: "FizzBuzz")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 15)
  }
  
  func testOnWrongMoveScoreNotIncremented() {
    viewController.play(move: "Fizz")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 0)
  }
  
  func testHasAGame() {
    XCTAssertNotNil(viewController.game)
  }
}
