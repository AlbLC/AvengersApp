//
//  DescriptionViewController.swift
//  AvengersApp
//
//  Created by Alberto Lara on 6/12/21.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var caracterDescription: UILabel!
   
    var character: Character?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = UIImage(named: character?.image ?? "")
        name.text = character?.name
        caracterDescription.text = character?.description
    }
    
    
    
}
