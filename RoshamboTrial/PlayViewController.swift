//
//  PlayViewController.swift
//  RoshamboTrial
//
//  Created by Divya Kabra on 5/2/17.
//  Copyright © 2017 Divya Kabra. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    // MARK: Generating Random Value for App
    func valueForApp() -> Int {
        let value = 1 + arc4random() % 3
        return Int(value)
    }
    
    // MARK: ROCK
    // This is for code only method
    @IBAction func rocksView(_ sender: UIButton) {
        var controller: ResultViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        controller.otherHand = valueForApp()
        controller.myHand = 1
        self.present(controller, animated: true, completion: nil)
        
    }
    
    // MARK: PAPER
    // This for the code and segue method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "papersView" {
            let controller = segue.destination as! ResultViewController
            controller.otherHand = valueForApp()
            controller.myHand = 2
        }
    }
    
    // MARK: Actions
    // For Paper Only
    @IBAction func papersView(_ sender: UIButton) {
        performSegue(withIdentifier: "papersView", sender: sender)
    }

    
}

    
