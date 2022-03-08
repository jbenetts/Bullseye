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
        var difference: Int
        if sliderValue > self.randomTarget
        {
            difference = sliderValue - self.randomTarget
        }
        else if self.randomTarget > sliderValue
        {
            difference = self.randomTarget - sliderValue
        }
        else
        {
            difference = 0
        }
        let awardedPoint: Int = 100 - difference
        return awardedPoint
    }
}
