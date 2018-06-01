//
//  Football.swift
//  SimpleTable
//
//  Created by Sushant Attada on 30/05/18.
//  Copyright © 2018 sushant. All rights reserved.
//

import UIKit

class Football{
    var teamName: String?
    var teamRank: String?
    var teamDescription: String?
    var image: UIImage
    
    init(teamName: String,
         teamRank: String,
         teamDescription: String) {
        
        self.teamName = teamName
        self.teamRank = teamRank
        self.teamDescription = teamDescription
        
        image = UIImage(named: self.teamName!)!

    }
}
