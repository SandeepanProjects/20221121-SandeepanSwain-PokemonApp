//
//  ViewController.swift
//  20221121-SandeepanSwain-PokemonApp
//
//  Created by sandeepan swain on 17/11/22.
//

import Foundation

struct URLManager {

    // MARK: - Public Methods
    
    public static func getURLForEndpoint(page: Int, limit: Int) -> URL? {
        
        let url = Configuration.url + "offset=\(page)&limit=\(limit)"
        return URL(string: url)
    }
}


