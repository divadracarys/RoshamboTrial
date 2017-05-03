//
//  ResultViewController.swift
//  RoshamboTrial
//
//  Created by Divya Kabra on 5/2/17.
//  Copyright © 2017 Divya Kabra. All rights reserved.
//
import UIKit

class ResultViewController: UIViewController {
    
    // MARK: Properties
    var otherHand: Int?
    var myHand: Int?
    var usersChoice: String = ""
    var computersChoice: String = ""
    
    // MARK: Outlets
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    
    // MARK: Life Cycle
    
        
    override func viewWillAppear(_ animated: Bool) {
        
        func numberToHand(_ value: Int) -> String {
            switch value {
            case 1:
                return "Rock"
            case 2:
                return "Paper"
            default:
                return "Scissors"
            }
        }
        
        // Unwrapping otherHand and myHand carefully
        if let myHand = self.myHand {
            usersChoice = numberToHand(myHand)
        } else {
            self.myHand = 3
            usersChoice = numberToHand(myHand!)
        }
        
        if let otherHand = self.otherHand {
            computersChoice = numberToHand(otherHand)
        } else {
            self.otherHand = 3
            computersChoice = numberToHand(otherHand!)
        }
        
        
        // Deciding and displaying the results
        if usersChoice == "Rock"{
            if computersChoice == "Scissors" {
                self.resultImage.image = UIImage(named: "RockCrushesScissors")
                self.resultLabel.text = "You win! Rock Crushes Scissors."
            }
            if computersChoice == "Paper" {
                self.resultImage.image = UIImage(named: "PaperCoversRock")
                self.resultLabel.text = "You lose! Paper Covers Rock."
            }
            if computersChoice == "Rock" {
                self.resultImage.image = UIImage(named: "itsATie")
                self.resultLabel.text = "It's a tie."
            }
        }
        if usersChoice == "Paper"{
            if computersChoice == "Scissors" {
                self.resultImage.image = UIImage(named: "ScissorsCutPaper")
                self.resultLabel.text = "You lose! Scissors Cut Paper."
            }
            if computersChoice == "Rock" {
                self.resultImage.image = UIImage(named: "PaperCoversRock")
                self.resultLabel.text = "You Win! Paper Covers Rock."
            }
            if computersChoice == "Paper" {
                self.resultImage.image = UIImage(named: "itsATie")
                self.resultLabel.text = "It's a tie."
            }
        }
            
        if usersChoice == "Scissors"{
            if computersChoice == "Rock" {
                self.resultImage.image = UIImage(named: "RockCrushesScissors")
                self.resultLabel.text = "You lose! Rock Crushes Scissors."
            }
            if computersChoice == "Paper" {
                self.resultImage.image = UIImage(named: "ScissorsCutPaper")
                self.resultLabel.text = "You win! Scissors Cut Paper."
            }
            if computersChoice == "Scissors" {
                self.resultImage.image = UIImage(named: "itsATie")
                self.resultLabel.text = "It's a tie."
            }
        }
        
    }
    
    
    
    
    @IBAction func dismiss () {
        dismiss(animated: true, completion: nil)
    }
}

