//
//  PokemonBase.swift
//  20221121-SandeepanSwain-PokemonApp
//
//  Created by sandeepan swain on 17/11/22.
//

import Foundation

struct PokemonBase : Codable {
    let count : Int?
    let next : String?
    let previous : String?
    let results : [Results]?

    enum CodingKeys: String, CodingKey {

        case count = "count"
        case next = "next"
        case previous = "previous"
        case results = "results"
    }

//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        count = try values.decodeIfPresent(Int.self, forKey: .count)
//        next = try values.decodeIfPresent(String.self, forKey: .next)
//        previous = try values.decodeIfPresent(String.self, forKey: .previous)
//        results = try values.decodeIfPresent([Results].self, forKey: .results)
//    }

}

struct Results : Codable {
    let name : String?
    let url : String?

    enum CodingKeys: String, CodingKey {

        case name = "name"
        case url = "url"
    }

//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        name = try values.decodeIfPresent(String.self, forKey: .name)
//        url = try values.decodeIfPresent(String.self, forKey: .url)
//    }

}
