//
//  ScoreTableViewCell.swift
//  44_Yahtze
//
//  Created by Alex Koh on 17/08/2017.
//  Copyright © 2017 AlexKoh. All rights reserved.
//

import UIKit

class ScoreTableViewCell: UITableViewCell {

    
    @IBOutlet weak var roundOneResultLabel: UILabel!
    @IBOutlet weak var roundTwoResultLabel: UILabel!
    @IBOutlet weak var roundThreeResultLabel: UILabel!
    
    var delegate: ScoreTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        delegate?.labelCharacteristics(At: roundOneResultLabel)
        delegate?.labelCharacteristics(At: roundTwoResultLabel)
        delegate?.labelCharacteristics(At: roundThreeResultLabel)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
}


protocol ScoreTableViewCellDelegate {
    func labelCharacteristics(At label: UILabel)
}







