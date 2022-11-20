//
//  ViewController.swift
//  20221121-SandeepanSwain-PokemonApp
//
//  Created by sandeepan swain on 17/11/22.
//

import Foundation
import UIKit

protocol PagingClient {
    func loadMoreData(number: Int?, completion: @escaping(PokemonBase?, Error?) -> ())
}

class PagingViewModel: PagingClient {
    
    private lazy var networkManager = NetworkManager()
    
    func loadMoreData(number: Int? = 0, completion: @escaping(PokemonBase?, Error?) -> ()) {
        guard let url = URLManager.getURLForEndpoint(page: number ?? 0, limit: Configuration.pageSize) else { return }
        
        networkManager.dataFromURL(url, completion:{(results,error) in
            if let results = results, error == nil {
                completion(results, nil)
                return
            } else {
                completion(nil, error)
            }
        })
    }
}

                 
