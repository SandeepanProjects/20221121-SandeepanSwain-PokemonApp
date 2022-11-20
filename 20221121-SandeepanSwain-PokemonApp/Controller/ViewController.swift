//
//  ViewController.swift
//  20221121-SandeepanSwain-PokemonApp
//
//  Created by sandeepan swain on 17/11/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var listTableView: UITableView!
    @IBOutlet weak var loaderView: LoadingView!

    var inSearchMode = false
    var pokemonInfoArray: [Results] = []
    var filteredPokemon: [Results]?
    private var detailsModel = DetailScreenViewModel()

    private var pagingModel = PagingViewModel()
    private var searchBar: UISearchBar!
    
    private var limitNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureViewComponents()
        loadPokemons()
    }
    
    // MARK: - Loader Method
    
    private func configureSearchBar() {
            searchBar = UISearchBar()
            searchBar.delegate = self
            searchBar.sizeToFit()
            searchBar.showsCancelButton = true
            searchBar.becomeFirstResponder()
            searchBar.tintColor = .white
            searchBar.barTintColor = .systemBackground
            searchBar.searchTextField.textColor = .white
            navigationItem.rightBarButtonItem = nil
            navigationItem.titleView = searchBar
    }
    
    func configureSearchBarButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(showSearchBar))
        navigationItem.rightBarButtonItem?.tintColor = .white
    }
    
    func configureSeachBarForCancelButton() {
        self.navigationItem.searchController = nil
        self.view.setNeedsLayout()
        self.view.endEditing(true)
        searchBar.searchTextField.resignFirstResponder()
    }
    
    @objc func showSearchBar() {
        configureSearchBar()
    }

    private func configureViewComponents() {
        listTableView.backgroundColor = .white
        self.listTableView.register(UINib.init(nibName: "PokemonInfoCell", bundle: nil), forCellReuseIdentifier: "PokemonInfoCell")
        listTableView.estimatedRowHeight = 50
        listTableView.rowHeight = UITableView.automaticDimension
        navigationController?.navigationBar.barTintColor = .mainPink()
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Pokemon List"
        configureSearchBarButton()
    }
    
    func loadPokemons() {
        pagingModel.loadMoreData(number: limitNumber, completion: {[weak self] (results,error) in
            DispatchQueue.main.async {
                if let data = results, let resultsArray = data.results, error == nil {
                    self?.pokemonInfoArray += resultsArray
                    self?.listTableView.reloadData()
                    self?.loaderView.hide()
                    if let newFetchedUrl = data.next, let newUrl = URL(string: newFetchedUrl), let value = newUrl.valueOf("offset") {
                        self?.limitNumber = Int(value) ?? 0
                    }
                    ActivityIndicator.stopAnimating()
                } else if let error = error {
                    self?.showErrorAlert(with: error.localizedDescription)
                    self?.loaderView.showMessage("Error loading data.", animateLoader: false, autoHide: 5.0)
                }
            }
        })
        
        if limitNumber == 0 {
            ActivityIndicator.startAnimating()
            loaderView.hide()
        } else {
            loaderView.showMessage("Loading...", animateLoader: true)
        }
    }
    
    // MARK: - Alerts
    
    private func showErrorAlert(with message: String) {
        
        let alertController = UIAlertController(title: "Error",
                                                message: message,
                                                preferredStyle: .alert)
        
        let retryAction = UIAlertAction(title: "Retry", style: .default) { [weak self] _ in
            self?.loadPokemons()
        }
        alertController.addAction(retryAction)
        
        present(alertController, animated: true, completion: nil)
    }

    // MARK: - Navigation
    
    func pushModelsScene(with info: Results) {
        guard let modelsVC = Navigation.getViewController(type: PokemonDetailsVC.self,
                                                          identifer: "PokemonDetailsVC") else { return }
        modelsVC.pokemonInfo = info
        navigationController?.pushViewController(modelsVC, animated: true)
    }
}
