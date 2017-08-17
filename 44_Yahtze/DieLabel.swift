//
//  DieLabel.swift
//  44_Yahtze
//
//  Created by Alex Koh on 17/08/2017.
//  Copyright © 2017 AlexKoh. All rights reserved.
//

import UIKit

class DieLabel: UILabel {
    
    var delegate: DieLabelDelegate?
    
    func actionsToCarryOutAfterDieBtnTapped() {
        print(self.text)
    }
    
    override func awakeFromNib() {
        
        //1. Create the gesture and link to the function/selector
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        //2. Add to the view
        self.addGestureRecognizer(tap)
        
    }
    
    func roll() {
        let randomDieNumber = arc4random_uniform(6) + 1
        self.text = "\(randomDieNumber)"
    }
    
    func handleTap(_ sender: UITapGestureRecognizer) {
        if sender.state == .ended {
            delegate?.dieBtnTapped(die: self)
        }
        
    }
  
}


protocol DieLabelDelegate {
    func dieBtnTapped(die: DieLabel)
}
















