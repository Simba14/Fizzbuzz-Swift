//
//  Game.swift
//  FizzBuzz
//
//  Created by Sean Blundell on 20/05/2017.
//  Copyright © 2017 Sean Blundell. All rights reserved.
//

import Foundation

class Game {
  
  var score: Int
  let brain: Brain
  
  init() {
    score = 0
    brain = Brain()
  }
  
  func play(move: String) -> (right: Bool, score: Int) {
    let result = brain.check(number: score + 1)
    
    if result == move {
      score += 1
      return (true, score)
    } else {
      return (false, score)
    }
  }
}
