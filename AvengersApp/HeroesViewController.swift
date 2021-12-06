//
//  HeroesViewController.swift
//  AvengersApp
//
//  Created by Alberto Lara on 5/12/21.
//

import UIKit

class HeroesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var heroes = [Hero]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        let heroRepository = HeroRepository()
        heroes = heroRepository.heroes
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeroTableViewCell", for: indexPath) as? HeroTableViewCell
        
        return cell ?? UITableViewCell()
    }

}
