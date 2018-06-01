//
//  CustomTableViewCell.swift
//  SimpleTable
//
//  Created by Sushant Attada on 14/05/18.
//  Copyright © 2018 sushant. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryImage: UIImageView!
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var countryWorldRank: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
