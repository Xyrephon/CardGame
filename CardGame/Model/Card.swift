//
//  Card.swift
//  CardGame
//
//  Created by Tucker, Jonah on 10/27/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class Card
{
    private var backImage: UIImage
        {
        get
        {
            return self.backImage
        }
        set(backImage)
        {
            self.backImage = backImage
        }
    }
    
    
    private var isFaceUp: Bool
        {
        get
        {
            return self.isFaceUp
        }
        set(isFaceUp)
        {
            self.isFaceUp = isFaceUp
        }
    }
    
    
    init()
    {
        backImage = UIImage(named: "CardBack")!
        isFaceUp = false
    }
    
    func toString() -> String
    {
        let description = "The card is\(isFaceUp)"
        return description
    }
    
    func getBackImage() -> UIImage
    {
        return backImage
    }
    
    func isUp() -> Bool
    {
        return isFaceUp
    }
    
    func setIsFacing(isFaceUp : Bool) -> Void
    {
        self.isFaceUp = isFaceUp
    }
}
