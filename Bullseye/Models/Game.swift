//
//  Game.swift
//  Bullseye
//
//  Created by jbenetts on 3/7/22.
//

import Foundation

struct Game{
    var randomTarget : Int = Int.random(in: 1...100)
    var score : Int = 0
    var round : Int = 1
    
    func returnPoints(sliderValue: Int) -> Int{
        return 999
    }
}
