//
//  CollectionViewCell.swift
//  wordList
//
//  Created by 野崎絵未里 on 2019/04/12.
//  Copyright © 2019年 野崎絵未里. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var englishLabel: UILabel!
    @IBOutlet var japaneseLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool){
        super.setSelected(selected, animated)
    }

}
