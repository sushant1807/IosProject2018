//
//  ViewController.swift
//  SimpleTable
//
//  Created by Sushant Attada on 14/05/18.
//  Copyright © 2018 sushant. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var countriesList = [Football]()
    
    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        super.viewDidLoad()
        
        let france = Football(teamName: "France", teamRank: "World Rank: 7", teamDescription: "The France national football team represents France in international football. The team's colours are blue, white and red, and the coq gaulois its symbol. France are colloquially known as Les Bleus.")
        countriesList.append(france)
        
        let germany = Football(teamName: "Germany", teamRank: "World Rank: 1", teamDescription: "The Germany national football team is the men's football team that has represented Germany in international competition since 1908. It is governed by the German Football Association, founded in 1900.")
        countriesList.append(germany)
        
        let brazil = Football(teamName: "Brazil", teamRank: "World Rank: 2", teamDescription: "The Brazil national football team represents Brazil in international men's association football. Brazil is administered by the Brazilian Football Confederation, the governing body for football in Brazil.")
        countriesList.append(brazil)
        
        let spain = Football(teamName: "Spain", teamRank: "World Rank: 8", teamDescription: "The Spain national football team represents Spain in men's International association football and is controlled by the Royal Spanish Football Federation, the governing body for football in Spain.")
        countriesList.append(spain)
        
        let croatia = Football(teamName: "Croatia", teamRank: "World Rank: 13", teamDescription: "The Croatia national football team represents Croatia in international football. The team is controlled by the Croatian Football Federation, the nation's governing body of football.")
        countriesList.append(croatia)
        
        let portugal = Football(teamName: "Portugal", teamRank: "World Rank: 4", teamDescription: "The Portugal national football team represents Portugal in international men's association football competition since 1921. It is controlled by the Portuguese Football Federation, the governing body for football in Portugal")
        countriesList.append(portugal)
        
        let england = Football(teamName: "England", teamRank: "World Rank: 13", teamDescription: "The England national football team represents England in international football and is controlled by The Football Association, the governing body for football in England.")
        countriesList.append(england)
        
        let argentina = Football(teamName: "Argentina", teamRank: "World Rank: 5", teamDescription: "The Argentina national football team represents Argentina in football and is controlled by the Argentine Football Association, the governing body for football in Argentina. ")
        countriesList.append(argentina)
        
        let egypyt = Football(teamName: "Egypt", teamRank: "World Rank: 46", teamDescription: "The Egypt national football team, known as The Pharaohs, represents Egypt in men's International association football and is governed by the Egyptian Football Association founded in 1921, the governing body for football in Egypt.")
        countriesList.append(egypyt)
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(countriesList.count)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        cell.countryLabel.text = countriesList[indexPath.row].teamName
        cell.countryWorldRank.text = countriesList[indexPath.row].teamRank
        cell.countryImage.image = countriesList[indexPath.row].image
        cell.countryImage.layer.cornerRadius = cell.countryImage.frame.height / 2
        
        return(cell)
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detailCell", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailViewController {
            destination.football = countriesList[(tableView.indexPathForSelectedRow?.row)!]
        }

}
}
