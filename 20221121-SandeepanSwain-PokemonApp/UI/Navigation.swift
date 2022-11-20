//
//  ViewController.swift
//  20221121-SandeepanSwain-PokemonApp
//
//  Created by sandeepan swain on 17/11/22.
//

import UIKit

enum StoryBoard: String {
    case main = "Main"
}

struct Navigation {
    
    static func getViewController<T: UIViewController>(_ storyboard: StoryBoard = .main, type: T.Type, identifer: String) -> T? {
        let storyBoard = UIStoryboard(name: storyboard.rawValue, bundle: Bundle.main)
        guard let viewController = storyBoard.instantiateViewController(withIdentifier: identifer) as? T else { return nil }
        return viewController
    }
}
