//
//  WordGenerator.swift
//  Wordle
//
//  Created by Mari Batilando on 2/20/23.
//

import Foundation

class WordGenerator {
    // Exercise 8: Add more possible words and return a **random** string every time `generateRandomWord` is called
    // IMPORTANT: MAKE SURE ALL THE LETTERS IN THE NEW WORDS YOU ADD ARE CAPITALIZED (e.g. "AUDIO" instead of "audio")
    // Tip: Look at the Array API documentation to see what method returns a random element
    
    // Updated possible words
    static let possibleWords = ["ABCDE", "FGHIJ", "KLMNO", "PQRST", "UVWXY", "ZABCD"]
    
    static func generateRandomWord() -> String? {
        // Check if there are possible words
        guard !possibleWords.isEmpty else {
            return nil
        }
        
        // Get a random index
        let randomIndex = Int.random(in: 0..<possibleWords.count)
        
        // Return the random word
        return possibleWords[randomIndex]
    }
}
