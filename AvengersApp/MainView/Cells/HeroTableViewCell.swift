//
//  HeroTableViewCell.swift
//  AvengersApp
//
//  Created by Alberto Lara on 5/12/21.
//

import UIKit

class HeroTableViewCell: UITableViewCell {

    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var heroName: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        heroImage.image = nil
        heroName.text = nil
    }

    func configureView(image: String, name: String) {
        heroImage.image = UIImage(named: image)
        heroName.text = name
        
    }
    
    
    
}
