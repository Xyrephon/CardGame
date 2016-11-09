//
//  Deck.swift
//  CardGame
//
//  Created by Tucker, Jonah on 10/31/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import Foundation

class Deck
{
    lazy var cards = [Card]()
    
    func shuffleDeck() -> Void
    {
        //Creates a temporary array to hold card objects.
        var tempDeck = [Card]()
        
        //Repeat until there are no cards in cards
        while cards.count > 0
        {
            //Chose a valid random index in the range of 0...cards.count-1
            let randomSpot = Int (arc4random() % UInt32(cards.count))
            
            //Takes the card from that spot from the deck. The deck decreases in count. This affects the state of the cards object.
            let removeCard = cards.removeAtIndex(randomSpot)
            
            //Add the removed card to the end of the temporary Deck
            tempDeck.append(removeCard)
        }
        //Replace the state deck with the temporary deck
        cards = tempDeck
        
    }
    
    func cutDeck() -> Void
    {
        
    }
    
    func drawCard() -> Card!
    {
        if cards.count > 0
        {
            return cards.removeAtIndex(0)
        }
        else
        {
            return nil
        }
    }
    
/*    func drawRandomCard() -> Card!
    {
        
    }
*/
}

