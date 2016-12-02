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
    
    
    private lazy var currentDeck = PlayingCardDeck()
    private lazy var clickCount = Int()
    private lazy var myGame = StupidGame()
    

    
    override func viewDidLoad()
    {
        myGame.startGame()
    }

    @IBAction func scoreAdder(sender: UIButton)
    {
        myGame.checkMatch()
        let score = "Score: \(myGame.checkMatch())"
        cardLabel.text = score
        
    }
    
    @IBAction func flipCard(sender: UIButton)
    {
        
        cardButton.setTitle ("\(myGame.hand[0].getCardData())", forState: UIControlState.Normal)
        topLeftCard.setTitle ("\(myGame.hand[1].getCardData())", forState: UIControlState.Normal)
        topRightCard.setTitle ("\(myGame.hand[2].getCardData())", forState: UIControlState.Normal)
        bottomLeftCard.setTitle("\(myGame.hand[3].getCardData())", forState: UIControlState.Normal)
        bottomRightCard.setTitle("\(myGame.hand[4].getCardData())", forState: UIControlState.Normal)
        middleLeftCard.setTitle("\(myGame.hand[5].getCardData())", forState: UIControlState.Normal)
        middleRightCard.setTitle("\(myGame.hand[6].getCardData())", forState: UIControlState.Normal)
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