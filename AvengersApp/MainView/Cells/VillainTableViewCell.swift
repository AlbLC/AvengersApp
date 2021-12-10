//
//  VillainTableViewCell.swift
//  AvengersApp
//
//  Created by Alberto Lara on 7/12/21.
//

import UIKit

class VillainTableViewCell: UITableViewCell {

    @IBOutlet weak var villainImage: UIImageView!
    @IBOutlet weak var villainName: UILabel!
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        villainImage.image = nil
        villainName.text = nil
    }

    func configureView(image: String, name: String) {
        villainImage.image = UIImage(named: image)
        villainName.text = name
        
    }
    
    
}
