//
//  Table1TableViewCell.swift
//  MultipleSectionDifferentDesign
//
//  Created by siddharth on 18/12/18.
//  Copyright © 2018 clarionTechnologies. All rights reserved.
//

import UIKit

class Table1TableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImageView:  UIImageView!
    @IBOutlet weak var cellTitleLabel: UILabel!
    @IBOutlet weak var cellSubstituteLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
