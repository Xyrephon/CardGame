//
//  StupidGame.swift
//  CardGame
//
//  Created by Tucker, Jonah on 11/14/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit
import Foundation

class StupidGame
{
    
    //Declaration Secion
    internal var score : Int
    internal var discardPile : Int
    internal var winnerPile : Int
    internal var hand : Int
    internal var drawingPile : Int
    internal var drawingDeck : PlayingCardDeck
    
    
    
    //inits
    init()
    {
        self.score = 0
        self.discardPile = Int()
        self.winnerPile = Int()
        self.hand = Int()
        self.drawingPile = Int()
        self.drawingDeck = PlayingCardDeck()
    }
    
    //Methods
    func startGame() -> Void
    {
        drawingDeck.shuffleDeck()
    }
}