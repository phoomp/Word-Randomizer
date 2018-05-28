//
//  ViewController.swift
//  Word Randomizer
//
//  Created by Phoom Punpeng on 28/5/2561 BE.
//  Copyright © 2561 Phoom Punpeng. All rights reserved.
//

import UIKit
import AudioToolbox
var n:Int? = nil
var word = ""
var timer = Timer()
var remainingTime = 10
var wordDef = ""
var waitingInProgress = 0

extension UIDevice {
    static func vibrate() {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var wordLabel: UILabel!
    @IBAction func randomButton(_ sender: UIButton) {
        if waitingInProgress == 0 {
            n = Int(arc4random_uniform(22))
            remainingTime = 10
            waitingInProgress = 1
            if n == 0 {
                wordLabel.text = "scholarly"
                wordDef = "involving or relating to serious academic study"
            }
            else if n == 1 {
                wordLabel.text = "tentative"
                wordDef = "Not done with confidence"
            }
            else if n == 2 {
                wordLabel.text = "carnage"
                wordDef = "Murdering, killing of many people"
            }
            else if n == 3 {
                wordLabel.text = "indignant"
                wordDef = "showing anger"
            }
            else if n == 4 {
                wordLabel.text = "irate"
                wordDef = "very very very very very very angry"
            }
            else if n == 5 {
                wordLabel.text = "accentuate"
                wordDef = "to make something more noticeable"
            }
            else if n == 6 {
                wordLabel.text = "rancid"
                wordDef = "smells bad"
            }
            else if n == 7 {
                wordLabel.text = "impede"
                wordDef = "to stop something from happening"
            }
            else if n == 8 {
                wordLabel.text = "deteriorate"
                wordDef = "to worsen; become worse"
            }
            else if n == 9 {
                wordLabel.text = "famished"
                wordDef = "very hungry"
            }
            else if n == 10 {
                wordLabel.text = "obsolete"
                wordDef = "no longer used because something newer exists"
            }
            else if n == 11 {
                wordLabel.text = "ravishing"
                wordDef = "delightful; entrancing"
            }
            else if n == 12 {
                wordLabel.text = "resilient"
                wordDef = "something being able to withstand something or recover quickly"
            }
            else if n == 13 {
                wordLabel.text = "vital"
                wordDef = "very important"
            }
            else if n == 14 {
                wordLabel.text = "affluent"
                wordDef = "being rich, wealthy"
            }
            else if n == 15 {
                wordLabel.text = "vigilant"
                wordDef = "careful"
            }
            else if n == 16 {
                wordLabel.text = "unkempt"
                wordDef = "messy, untidy, disorder"
            }
            else if n == 17 {
                wordLabel.text = "rigorous"
                wordDef = "extremely strict"
            }
            else if n == 18 {
                wordLabel.text = "gawk"
                wordDef = "to stare at someone rudely"
            }
            else if n == 19 {
                wordLabel.text = "endeavor"
                wordDef = "to try to do something"
            }
            else if n == 20 {
                wordLabel.text = "modest"
                wordDef = "not very large"
            }
            else if n == 21 {
                wordLabel.text = "controversy"
                wordDef = "disagreement"
            }
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.reduceTimer), userInfo: nil, repeats: true)
        }
        else {}
    }
    
    @objc func reduceTimer() {
        remainingTime -= 1
        timeLabel.text = String(remainingTime)
        
        if remainingTime <= 0 {
            waitingInProgress = 0
            timeLabel.text = ""
            showDefinition()
            timer.invalidate()
            UIDevice.vibrate()
            UIDevice.vibrate()
            UIDevice.vibrate()
            UIDevice.vibrate()
            UIDevice.vibrate()
        }
    }
    @objc func showDefinition() {
        /*if n == 1 {
            wordDef = "involving or relating to serious academic study"
        }
        else if n == 2 {
            wordDef = "Not done with confidence"
        }
        else {
            wordDef = "didn't land on 1 or 2"
        }*/
        wordLabel.text = wordDef
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = ""
        wordLabel.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

