//
//  ViewController.swift
//  ScoreKeeper
//
//  Created by 章音童 on 2022/3/11.
//

import UIKit

class ViewController: UIViewController {
    var roundNumber = 1
    var playerScores = [0, 0, 0, 0]
    var scoreTextFields = [UITextField]()
    var scoresListTextViews = [UITextView]()

    @IBOutlet weak var roundLabel: UILabel!
    
    @IBAction func pressedNewGame(_ sender: Any) {
        resetGame()
    }
    
    @IBAction func pressedEnterRound(_ sender: Any) {
        enterScores()
    }
    
    @IBOutlet weak var player1ScoreTextField: UITextField!
    @IBOutlet weak var player2ScoreTextField: UITextField!
    @IBOutlet weak var player3ScoreTextField: UITextField!
    @IBOutlet weak var player4ScoreTextField: UITextField!
    
    
    @IBOutlet weak var player1ScoreTextView: UITextView!
    @IBOutlet weak var player2ScoreTextView: UITextView!
    @IBOutlet weak var player3ScoreTextView: UITextView!
    @IBOutlet weak var player4ScoreTextView: UITextView!
    
    func resetGame() {
            roundNumber = 1
            roundLabel.text = "Round \(roundNumber)"
        for i in 0..<4 {
                playerScores[i] = 0
                scoreTextFields[i].text = ""
                scoresListTextViews[i].text = ""
        }
    }
    
    func enterScores() {
    for i in 0..<4 {
    if let score = Int(scoreTextFields[i].text!) {
                    playerScores[i] += score
                }
                scoresListTextViews[i].text = scoresListTextViews[i].text == "" ? "\(playerScores[i])" : "\(scoresListTextViews[i].text!)\n\(playerScores[i])"
                scoresListTextViews[i].textAlignment = .center
                scoreTextFields[i].text = ""
            }
            roundNumber += 1
            roundLabel.text = "Round \(roundNumber)"
    self.view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
            scoreTextFields = [player1ScoreTextField, player2ScoreTextField, player3ScoreTextField, player4ScoreTextField]
            scoresListTextViews = [player1ScoreTextView, player2ScoreTextView, player3ScoreTextView, player4ScoreTextView]
    resetGame()
    }


}

