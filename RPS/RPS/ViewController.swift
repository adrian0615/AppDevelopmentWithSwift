//
//  ViewController.swift
//  RPS
//
//  Created by Adrian McDaniel on 1/11/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var appSignLabel: UILabel!
    @IBOutlet var statusLabel: UILabel!
    @IBOutlet var rockLabel: UIButton!
    @IBOutlet var paperLabel: UIButton!
    @IBOutlet var scissorLabel: UIButton!
    @IBOutlet var playAgainLabel: UIButton!
    @IBAction func rockButton(_ sender: Any) {
        play(mySign: .rock)
    }
    @IBAction func paperButton(_ sender: Any) {
        play(mySign: .paper)
    }
    @IBAction func scissorButton(_ sender: Any) {
        play(mySign: .scissors)
    }
    @IBAction func playAgainButton(_ sender: Any) {
        updateUI(gameState: .start)
    }
    
    func play(mySign: Sign) {
        let appPlay = randomSign()
        let gameState = mySign.gamePlay(appSign: appPlay)
        updateUI(gameState: gameState)
        rockLabel.isEnabled = false
        paperLabel.isEnabled = false
        scissorLabel.isEnabled = false
        appSignLabel.text = appPlay.emoji
        switch mySign {
        case .rock:
            rockLabel.isHidden = false
            paperLabel.isHidden = true
            scissorLabel.isHidden = true
        case .paper:
            rockLabel.isHidden = true
            paperLabel.isHidden = false
            scissorLabel.isHidden = true
        case .scissors:
            rockLabel.isHidden = true
            paperLabel.isHidden = true
            scissorLabel.isHidden = false
        
        }
        playAgainLabel.isHidden = false
    }
    
    func updateUI(gameState: GameState) {
        switch gameState {
        case .start:
            appSignLabel.text = "🤖"
            statusLabel.text = "Rock, Paper, Scissors?"
            view.backgroundColor = .white
            playAgainLabel.isHidden = true
            rockLabel.isHidden = false
            paperLabel.isHidden = false
            scissorLabel.isHidden = false
            rockLabel.isEnabled = true
            paperLabel.isEnabled = true
            scissorLabel.isEnabled = true
        case .draw:
            statusLabel.text = "It's a Draw!"
            view.backgroundColor = .blue
        case .win:
            statusLabel.text = "You Win!"
            view.backgroundColor = .green
        case .lose:
            statusLabel.text = "Sorry, you lose."
            view.backgroundColor = .red
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(gameState: .start)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

