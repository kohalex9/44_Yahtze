//
//  ViewController.swift
//  44_Yahtze
//
//  Created by Alex Koh on 17/08/2017.
//  Copyright © 2017 AlexKoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var labelObj1 = DieLabel()
    var dices : [DieLabel] = []
    var gameRoundNumber = 1
    var sumOfNumbersForFirstRound = 0
    var sumOfNumbersForSecondRound = 0
    var sumOfNumbersForThirdRound = 0
    
    @IBOutlet var dieLabels: [DieLabel]!
    @IBOutlet weak var roundOneResultLabel: UILabel!
    @IBOutlet weak var roundTwoResultLabel: UILabel!
    @IBOutlet weak var roundThreeResultLabel: UILabel!
    
    @IBAction func onRollButtonPressed(_ sender: Any) {
        
        for dieLabel in dieLabels {
            dieLabel.delegate = self
            
            if dieLabel.backgroundColor != UIColor.green {
                dieLabel.roll()
                gameRoundNumber = Int(dieLabel.text!)!
            }
            
            switch gameRoundNumber {
            case 1:
                sumOfNumbersForFirstRound += Int(dieLabel.text!)!
                roundOneResultLabel.text = "\(sumOfNumbersForFirstRound)"
            case 2:
                sumOfNumbersForSecondRound += Int(dieLabel.text!)!
                roundTwoResultLabel.text = "\(sumOfNumbersForSecondRound)"
            case 3:
                sumOfNumbersForThirdRound = Int(dieLabel.text!)! + sumOfNumbersForSecondRound + sumOfNumbersForFirstRound
                roundThreeResultLabel.text = "\(sumOfNumbersForThirdRound)"
            default:
                break
            }
            
        }
        

        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: DieLabelDelegate {
    func dieBtnTapped(die: DieLabel) {
        die.actionsToCarryOutAfterDieBtnTapped()
        dices.append(die)
        die.backgroundColor = UIColor.green
    }
}

extension ViewController: ScoreTableViewCellDelegate {
    func labelCharacteristics(At label: UILabel) {
        
    }
}









