//
//  Game.swift
//  Bullseye
//
//  Created by jbenetts on 3/7/22.
//

import Foundation

struct Game{
    //Variables
    var randomTarget: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    //Function to return the points, we need the slider value to make the calculation
    func returnPoints(sliderValue: Int) -> Int{
        var difference: Int = self.randomTarget - sliderValue
        if (difference < 0)
        {
            difference = difference * -1
        }
        let awardedPoint: Int = 100 - difference
        return awardedPoint
    }
}
