//
//  ViewController.swift
//  20221121-SandeepanSwain-PokemonApp
//
//  Created by sandeepan swain on 17/11/22.
//

import Foundation
import UIKit

class DetailScreenViewModel {
    
    private static func getData(url: URL, completion: @escaping(Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }

    func getDetailsForPokemon(url: String, completion:@escaping(DetailsBase?,Error?)-> ()) {
        let urlString: String? = url
        guard let mainUrlString = urlString, let url = URL(string: mainUrlString) else { return }
        let task = URLSession(configuration: .default).dataTask(with: url) { data,response,error in
            guard let data = data, error == nil else {return}
            do {
                let decoder = JSONDecoder()
                let json = try? decoder.decode(DetailsBase.self, from: data)
                //if let res = json {
                    completion(json, nil)
               // }
            } catch let error {
                print(error)
            }
        }
        task.resume()
    }

    func downloadImage(url: String, completion:@escaping(Data?,Error?)-> ()) {
        guard let url = URL(string: url) else { return }
        let task = URLSession(configuration: .default).dataTask(with: url) { data,response,error in
            if let error = error {
                completion(nil, error)
                return
            }
            guard let data = data, error == nil else {
                return
            }
            DispatchQueue.main.async {
                completion(data, nil)
            }
        }
        task.resume()
    }
}

extension UIImageView {
    func downloaded(from url: URL, contentMode mode: ContentMode = .scaleAspectFill) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        }.resume()
    }

    func downloaded(from link: String, contentMode mode: ContentMode = .scaleAspectFill) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}
