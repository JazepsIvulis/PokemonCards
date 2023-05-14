//
//  PokeyTableViewCell.swift
//  PokemonCards
//
//  Created by jazeps.ivulis on 14/05/2023.
//

import UIKit
import SDWebImage

class PokeyTableViewCell: UITableViewCell {

    @IBOutlet weak var pokeyImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var supertypeLabel: UILabel!
    @IBOutlet weak var hpLabel: UILabel!
    @IBOutlet weak var rarityLabel: UILabel!
    
    func setupUI(withDataFrom: Card) {
        nameLabel.text = "Name: " + withDataFrom.name
        hpLabel.text = "Health points: " + (withDataFrom.hp ?? "-")
        supertypeLabel.text = "Supertype: " + (withDataFrom.supertype ?? "-")
        rarityLabel.text = "Rarity: " + withDataFrom.rarity
        pokeyImageView.sd_setImage(with: URL(string: withDataFrom.imageURL))
        
        if withDataFrom.supertype == "Trainer" {
            contentView.backgroundColor = UIColor.cyan
        } else if withDataFrom.supertype == "Energy" {
            contentView.backgroundColor = UIColor.magenta
        } else {
            contentView.backgroundColor = UIColor.white
        }
    }
}
