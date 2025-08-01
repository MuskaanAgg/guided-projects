//
//  ViewController.swift
//  Apple Pie
//
//  Created by Kartik Sharma on 21/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    var totalWins = 0
    var totalLosses = 0
    let incorrectMovesAllowed = 7
    var currentGame: Game!
    
    
    var listOfWords = ["buccaneer", "swift", "glorious","bug", "program"]
    
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        
    }
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMoveRemaining: incorrectMovesAllowed)
        updateUI()
    }
    func updateUI(){
        func updateUI(){
            scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
            treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMoveRemaining)")
        }
    }
    
}
