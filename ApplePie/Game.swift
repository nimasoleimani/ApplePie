//
//  Game.swift
//  ApplePie
//
//  Created by Nima Soleimani on 10/29/17.
//  Copyright © 2017 Nima Soleimani. All rights reserved.
//

import Foundation

struct Game {
    
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    var formattedWord: String {
        var guessedWord = ""
        for letter in word.characters {
            if guessedLetters.contains(letter){
                guessedWord.append(letter)
            } else {
                guessedWord.append("_")
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.characters.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}
