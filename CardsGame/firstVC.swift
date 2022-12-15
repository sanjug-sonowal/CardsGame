//
//  firstVC.swift
//  CardsGame
//
//  Created by Sanjug Sonowal on 15/12/22.
//

import UIKit

class firstVC: UIViewController {

    @IBOutlet var cardImages: UIImageView!
    
    var cards: [UIImage] = Card.allValues
    
    @IBOutlet var buttons: [UIButton]!
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for button in buttons{
            button.layer.cornerRadius = 10
        }
      
    }
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImages), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImages(){
        cardImages.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    
    @IBAction func btnRules(_ sender: UIButton) {
    }
    @IBAction func btnStop(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func btnRestart(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
    
}
