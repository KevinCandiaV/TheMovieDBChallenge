//
//  MovieListController.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import UIKit

protocol MovieListViewProtocol: AnyObject {
    // PRESENTER -> VIEW
    var presenter: MovieListPresenterProtocol? { get set }
    func reloadMoviesTable(withData data: MovieListResponse?)
}

class MovieListViewController: UIViewController {
    
    // MARK: - Properties
    var presenter: MovieListPresenterProtocol?
    let movieListTableView = UITableView()
    var searchController = UISearchController()
    var elements: MovieListResponse?
    
    override func loadView() {
        super.loadView()
        setupUI()
        setupSearchBar()
        callWebService()
    }
    
    private func setupUI() {
        // MARK: - ViewConfig
        view.backgroundColor = .white
        title = "The Movie DB(Upcoming)"
        
        // MARK: - MovieList Contrainst
        view.addSubview(movieListTableView)
        movieListTableView.translatesAutoresizingMaskIntoConstraints = false
        movieListTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        movieListTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        movieListTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        movieListTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        // MARK: - Nib load
        let nib = UINib(nibName: "MovieListTableViewCell", bundle: nil)
        
        // MARK: - Regiter Nib
        movieListTableView.register(nib, forCellReuseIdentifier: MovieListTableViewCell.reusableIdentifier)
        
        // MARK: - tableViewDelegates
        movieListTableView.dataSource = self
        movieListTableView.delegate = self
    }
    
    private func setupSearchBar() {
        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = "Buscador"
        navigationItem.searchController = searchController
    }
    
    private func callWebService() {
        presenter?.getMovieList()
    }

}

extension MovieListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements?.results?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MovieListTableViewCell.reusableIdentifier, for: indexPath) as? MovieListTableViewCell else {
            return UITableViewCell()
        }
        let data = elements?.results?[indexPath.row]
        cell.overviewLabel.text = data?.overview
        cell.titleMovieLabel.text = data?.title
        cell.releaseDateLabel.text = data?.release_date
        cell.voteAverageLabel.text = String(format: "%.1f", data?.vote_average ?? 0.0)
        cell.posterImageView.af.setImage(withURL: getUrl(data?.poster_path ?? ""))
        return cell
    }
    
}

extension MovieListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        guard let item = elements?.results?[indexPath.row] else { return }
        presenter?.presentDetailView(data: item)
    }
    
}

extension MovieListViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        print(text)
    }
}

extension MovieListViewController: MovieListViewProtocol {
    func reloadMoviesTable(withData data: MovieListResponse?) {
        self.elements = data
        DispatchQueue.main.async {
            self.movieListTableView.reloadData()
        }
    }
    
    
    
}
