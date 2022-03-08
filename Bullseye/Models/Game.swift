//
//  Game.swift
//  Bullseye
//
//  Created by jbenetts on 3/7/22.
//

import Foundation

struct Game{
    //Variables
    var randomTarget = Int.random(in: 1...100)
    var score = 0
    var round = 1
    //Function to return the points, we need the slider value to make the calculation
    func returnPoints(sliderValue: Int) -> Int{
        //Difference of the value, returned to a positive number minus 100
        return 100 - abs(randomTarget - sliderValue)
    }
}
