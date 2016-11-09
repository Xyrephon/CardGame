//
//  PlayingCard.swift
//  CardGame
//
//  Created by Tucker, Jonah on 10/27/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    internal var rank : Int
    internal var suit : String
    internal var color : UIColor
    internal var frontImage : UIImage
    
    override init()
    {
        self.frontImage = UIImage()
        self.color = UIColor.redColor()
        self.rank = 0
        self.suit = String()
        super.init()
    }
    
    init(withRank: Int, ofSuit: String)
    {
        frontImage = UIImage()
        color = UIColor.redColor()
        rank = withRank
        suit = ofSuit
        super.init()
        
    }
    
    override func toString() -> String
    {
        let facing : String
        if self.isUp()
        {
            facing = " is face up."
        }
        else
        {
            facing = " is face down."
        }
        
        let description = "This PlayingCard has a face value of \(rank), a color of \(color), the back image is \(self.getBackImage()) and if of the \(suit) suit \(facing)"
    
        return description
    }
    
    func getRank() -> Int
    {
        return self.rank
    }
    
    func setRank(rank : Int)
    {
        self.rank = rank
    }
    
    func getCardData() -> String
    {
        let data = "\(PlayingCard.validRanks()[rank])\(suit)"
        return data
    }
    
    //The modifier 'class' in front of the func means that this method is visible 
    //without creating an instance of the class in question.
    //This is class method, not an instance method.
    class func validRanks() -> [String]
    {
        return ["??", "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    }
    
    class func maxRank() -> Int
    {
        return validRanks().count - 1
    }
    
    class func validSuits() -> [String]
    {
        return ["♥️", "♠️", "♦️", "♣️"]
    }
    
}