//
//  PokemonDetailsVC.swift
//  20221121-SandeepanSwain-PokemonApp
//
//  Created by sandeepan swain on 17/11/22.
//

import UIKit

class PokemonDetailsVC: UIViewController {
    var pokemonInfo: Results?
    private var detailModel = DetailScreenViewModel()
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var pokemonImage: UIImageView!
    var pokemonDetailsArray: DetailsBase?
    var imageURL: String?
    var imageData: Data?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: false)
        setUpTableView()
        if let infoURL = pokemonInfo?.url {
            getDetails(url: infoURL)
        }
    }
    
    private func setUpTableView() {
        self.navigationItem.title = "Pokemon Details"
        edgesForExtendedLayout = .top
        extendedLayoutIncludesOpaqueBars = true
        tableView.isExclusiveTouch = true
        self.tableView.register(UINib(nibName: String(describing: PokemonInfoCell.self), bundle: Bundle(for: PokemonInfoCell.self)), forCellReuseIdentifier: PokemonInfoCell.cellIdentifier)
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.separatorStyle = .none
    }
    
    private func getDetails(url: String) {
        ActivityIndicator.startAnimating()
        let group = DispatchGroup()
        group.enter()
        self.detailModel.getDetailsForPokemon(url: url, completion: {[weak self] (results,error) in
            group.enter()
            self?.detailModel.downloadImage(url: results?.sprites?.other?.home?.front_default ?? "", completion: {[weak self] (dataResult, error) in
                ActivityIndicator.startAnimating()
                if let data = dataResult, error == nil {
                    self?.imageData = data
                    self?.pokemonDetailsArray = results
                    ActivityIndicator.stopAnimating()
                    group.leave()
                }
                else {
                    group.leave()
                }
            })
            group.leave()
        })
        
        group.notify(queue: .main, execute: {
            if let data = self.imageData {
                self.pokemonImage.image = UIImage(data: data)
            }
            self.tableView.reloadData()
            ActivityIndicator.stopAnimating()
        })
    }
    
    private func setUpUI() {
        if let pokemonDetails = pokemonDetailsArray, let imageURL = pokemonDetails.sprites?.other?.home?.front_default {
            pokemonImage.downloaded(from: imageURL)
        }
    }
    
    private func showErrorAlert(with message: String) {
        
        let alertController = UIAlertController(title: "Error",
                                                message: message,
                                                preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "ok", style: .default) { [weak self] _ in
           
        }
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
}

extension PokemonDetailsVC: UITableViewDataSource, UITableViewDelegate {

    static let detailCellIdentifier: String = "PokemonCell"

    // MARK: - UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PokemonInfoCell.cellIdentifier, for: indexPath) as? PokemonInfoCell
        if let infoObj = pokemonDetailsArray {
            switch indexPath.row {
            case 0:
                if let name = infoObj.species?.name {
                    cell?.populateData(data: name)
                }
            case 1:
                if let name = infoObj.abilities?.first?.ability?.name {
                    cell?.populateData(data: name)
                }
            case 2:
                if let baseStat = infoObj.stats?.first?.base_stat {
                    cell?.populateData(data: String(baseStat))
                }
            default:
                print("")
            }
        }
        return cell ?? UITableViewCell()
    }

    // MARK: - UITableViewDelegate

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
