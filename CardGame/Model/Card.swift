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
    fileprivate var isFaceUp: Bool
    
    init()
    {
        isFaceUp = false
    }
    
    func toString() -> String
    {
        let description = "The card is\(isFaceUp)"
        return description
    }
    
    func isUp() -> Bool
    {
        return isFaceUp
    }
    
    func setIsFacing(_ isFaceUp : Bool) -> Void
    {
        self.isFaceUp = isFaceUp
    }
}
