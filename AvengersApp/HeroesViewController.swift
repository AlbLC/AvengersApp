//
//  HeroesViewController.swift
//  AvengersApp
//
//  Created by Alberto Lara on 5/12/21.
//

import UIKit

class HeroesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var heroes = [Character]()
    
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HeroTableViewCell", for: indexPath) as? HeroTableViewCell else { return UITableViewCell() }
        
        let hero = heroes[indexPath.row]
        cell.configureView(image: hero.image,
                          name: hero.name)
        
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
    
    
}
