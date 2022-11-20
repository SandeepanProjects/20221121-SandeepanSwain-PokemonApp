//
//  ViewController.swift
//  20221121-SandeepanSwain-PokemonApp
//
//  Created by sandeepan swain on 17/11/22.
//

import UIKit

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let bottomEdge = scrollView.contentOffset.y + scrollView.frame.height
        
        if bottomEdge >= scrollView.contentSize.height {    //We reached bottom
            loadPokemons()
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {

    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if inSearchMode == true {
            return filteredPokemon?.count ?? 0
        } else {
            return pokemonInfoArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PokemonInfoCell.cellIdentifier, for: indexPath) as? PokemonInfoCell
        if let infoObj = inSearchMode ? filteredPokemon?[indexPath.row] : pokemonInfoArray[indexPath.row], let name = infoObj.name {
            cell?.populateData(data: name )
            cell?.accessoryType = .disclosureIndicator
        }
        return cell ?? UITableViewCell()
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIConfiguration.cellHeight
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let infoObj = inSearchMode ? filteredPokemon?[indexPath.row] : pokemonInfoArray[indexPath.row] else { return }
        pushModelsScene(with: infoObj)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = indexPath.row % 2 == 0 ? UIConfiguration.evenCellColor : UIConfiguration.oddCellColor
    }
}

extension ViewController: UISearchBarDelegate {
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        configureSeachBarForCancelButton()
        inSearchMode = false
        listTableView.reloadData()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText == "" || searchBar.text == nil {
            inSearchMode = false
            listTableView.reloadData()
            view.endEditing(true)
        } else {
            inSearchMode = true
            filteredPokemon = pokemonInfoArray.filter({ $0.name?.range(of: searchText.lowercased()) != nil })
            listTableView.reloadData()
        }
    }
}
