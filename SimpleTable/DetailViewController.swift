//
//  DetailViewController.swift
//  SimpleTable
//
//  Created by Sushant Attada on 15/05/18.
//  Copyright © 2018 sushant. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailRankingLabel: UILabel!
    @IBOutlet weak var detailCountryLabel: UILabel!
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailTextView: UITextView!
    var football:Football?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailCountryLabel.text = football?.teamName
        detailImage.image = football?.image
        detailTextView.text = football?.teamDescription
        detailRankingLabel.text = football?.teamRank
    }

}
