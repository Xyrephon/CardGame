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
    internal var drawingPile : Int
    internal var drawingDeck : PlayingCardDeck
    internal var hand : [PlayingCard]
    
    
    
    //inits
    init()
    {
        self.score = 0
        self.discardPile = Int()
        self.winnerPile = Int()
        self.hand = [PlayingCard]()
        self.drawingPile = Int()
        self.drawingDeck = PlayingCardDeck()
    }
    
    //Methods
    func startGame() -> Void
    {
        drawingDeck.shuffleDeck()
        drawCards()
//      playMatchGame()
    }
    
    fileprivate func drawCards () -> Void
    {
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
    }
    
    func checkMatch() -> Int
    {
        var points = Int()
        
        for var outerLoop in 0 ..< hand.count
        {
            let handSize = hand.count
            for var innerLoop in 0 ..< hand.count
            {
                if(outerLoop != innerLoop && hand[outerLoop].rank == hand[innerLoop].rank)
                {
                    hand.remove(at: innerLoop)
                    points += 2
                    innerLoop -= 1
                }
            }
            
            if (handSize != hand.count)
            {
                hand.remove(at: outerLoop)
                points += 2
                outerLoop -= 1
            }
            
        }
        let negativePoints = hand.count
        hand.removeAll()
        drawCards()
        return points - negativePoints
    }
    
    
//    func playMatchGame() -> Void
//    {
//        var cardCount = 45
//        while (cardCount >= 7)
//        {
//            checkMatch()
//            score += checkMatch()
//            hand.removeAll()
//            drawCards()
//            
//            cardCount -= 7
//        }
    
        
        
}
