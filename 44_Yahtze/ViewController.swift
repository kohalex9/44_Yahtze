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
    
    @IBOutlet var dieLabels: [DieLabel]!

    @IBAction func onRollButtonPressed(_ sender: Any) {
        
        for dieLabel in dieLabels {
            dieLabel.delegate = self
            
            if dieLabel.backgroundColor != UIColor.green {
                dieLabel.roll()
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

