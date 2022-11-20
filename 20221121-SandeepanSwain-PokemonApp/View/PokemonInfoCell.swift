//
//  PokemonInfoCell.swift
//  20221121-SandeepanSwain-PokemonApp
//
//  Created by sandeepan swain on 19/11/22.
//

import UIKit

class PokemonInfoCell: UITableViewCell {
    
    @IBOutlet private weak var titleLabel: UILabel!
    static let cellIdentifier: String = "PokemonInfoCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.textLabel?.backgroundColor = .darkGray
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func populateData(data: String) {
        self.titleLabel.text = data
    }
    
}
