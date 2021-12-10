//
//  VillainsViewController.swift
//  AvengersApp
//
//  Created by Alberto Lara on 7/12/21.
//

import UIKit

class VillainsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

   
    @IBOutlet weak var tableView: UITableView!
    
    

        var villains = [Character]()
        
    override func viewDidLoad() {
            super.viewDidLoad()
            
            tableView.dataSource = self
            tableView.delegate = self
            
            let villainRepository = VillainRepository()
            villains = villainRepository.villains
            
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            villains.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "VillainTableViewCell", for: indexPath) as? VillainTableViewCell else { return UITableViewCell() }
            
            let villain = villains[indexPath.row]
            cell.configureView(image: villain.image,
                               name: villain.name)
            
            
            return cell
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destination = segue.destination as? DescriptionViewController,
               let cell = sender as? VillainTableViewCell,
               let indexPath = tableView.indexPath(for: cell){
                
                let villain = villains[indexPath.row]
                destination.character = villain
            }
            
            
        }

}

