//
//  ViewController.swift
//  20221121-SandeepanSwain-PokemonApp
//
//  Created by sandeepan swain on 17/11/22.
//

import Foundation

class NetworkManager {
    
    public func dataFromURL(_ url: URL, completion: @escaping(PokemonBase?, Error?) -> ()) {
                
        let task = URLSession(configuration: .default).dataTask(with: url) { (data, response, error) in
            if error == nil,
                let data = data {
                do {
                    let response = try Mapper.decoder.decode(PokemonBase.self, from: data)
                    completion(response, nil)
                } catch let parsingError {
                   completion(nil, parsingError)
                }
            } else {
                completion(nil, error!)
            }
        }
        task.resume()
    }
}
