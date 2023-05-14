//
//  PokemonDetailViewController.swift
//  PokemonCards
//
//  Created by jazeps.ivulis on 14/05/2023.
//

import UIKit

class PokemonDetailViewController: UIViewController {

    var pokemon: Card?
    
    @IBOutlet weak var pokeImageView: UIImageView!
    @IBOutlet weak var supertypeLabel: UILabel!
    @IBOutlet weak var typesLabel: UILabel!
    @IBOutlet weak var hpLabel: UILabel!
    @IBOutlet weak var rarityLabel: UILabel!
    @IBOutlet weak var evolvesFromLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = pokemon?.name

        if let pokemon = pokemon {
            pokeImageView.sd_setImage(with: URL(string: pokemon.imageURL))
            supertypeLabel.text = "Supertype: " + (pokemon.supertype ?? "-")
            typesLabel.text = "Type: " + (pokemon.types?.first ?? "-")
            hpLabel.text = "Health points: " + (pokemon.hp ?? "-")
            rarityLabel.text = "Rarity: " + pokemon.rarity
            evolvesFromLabel.text = "Evolves from: " + (pokemon.evolvesFrom ?? "-")
        }
    }
}
