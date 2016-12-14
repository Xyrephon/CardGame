//
//  CardGameController.swift
//  CardGame
//
//  Created by Tucker, Jonah on 10/27/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    @IBOutlet weak var cardButton: UIButton!
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var topLeftCard: UIButton!
    @IBOutlet weak var topRightCard: UIButton!
    @IBOutlet weak var bottomLeftCard: UIButton!
    @IBOutlet weak var bottomRightCard: UIButton!
    @IBOutlet weak var middleLeftCard: UIButton!
    @IBOutlet weak var middleRightCard: UIButton!
    
    
    fileprivate lazy var currentDeck = PlayingCardDeck()
    fileprivate lazy var clickCount = Int()
    fileprivate lazy var myGame = StupidGame()
    

    
    override func viewDidLoad()
    {
        myGame.startGame()
    }

    @IBAction func scoreAdder(_ sender: UIButton)
    {
        var score = 0
        score += myGame.checkMatch()
        let scoreText = "Score: \(score)"
        cardLabel.text = scoreText
        
    }
    
    @IBAction func flipCard(_ sender: UIButton)
    {
        
        cardButton.setTitle ("\(myGame.hand[0].getCardData())", for: UIControlState())
        topLeftCard.setTitle ("\(myGame.hand[1].getCardData())", for: UIControlState())
        topRightCard.setTitle ("\(myGame.hand[2].getCardData())", for: UIControlState())
        bottomLeftCard.setTitle("\(myGame.hand[3].getCardData())", for: UIControlState())
        bottomRightCard.setTitle("\(myGame.hand[4].getCardData())", for: UIControlState())
        middleLeftCard.setTitle("\(myGame.hand[5].getCardData())", for: UIControlState())
        middleRightCard.setTitle("\(myGame.hand[6].getCardData())", for: UIControlState())
//        clickCount += 1
//        let words = "The random card has been clicked \(clickCount) times"
//        cardLabel.text = words
//        
//        if let currentCard = currentDeck.drawRandomCard() as? PlayingCard
//        {
//            cardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
//        }
//        else
//        {
//            cardLabel.text = "The deck was exhausted - reinitializing"
//            currentDeck = PlayingCardDeck()
//        }
    }
}
