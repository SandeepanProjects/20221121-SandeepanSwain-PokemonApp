//
//  ViewController.swift
//  20221121-SandeepanSwain-PokemonApp
//
//  Created by sandeepan swain on 17/11/22.
//

import UIKit

struct Configuration {
    
    static let url      = "https://pokeapi.co/api/v2/pokemon?"
    static let pageSize = 20
    static func checkConfiguration() {
        
        if url.isEmpty || pageSize < 0 {
            fatalError("""
                Invalid configuration found.
            """)
        }
    }
}

struct UIConfiguration {

    static let evenCellColor = UIColor(red: 223/255, green: 228/255, blue: 234/255, alpha: 1.0)

    static let oddCellColor = UIColor(red: 241/255, green: 242/255, blue: 246/255, alpha: 1.0)
    
    static let activityIndicatorColor = UIColor(red: 183/255, green: 21/255, blue: 64/255, alpha: 1.0)
    
    static let cellHeight: CGFloat = 55
}
