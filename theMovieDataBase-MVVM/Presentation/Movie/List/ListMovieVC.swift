//
//  TheMovieDBView.swift
//  theMovieDataBase-MVVM
//
//  Created by Juan Armando Frías Ramírez on 20/09/23.
//

import Resolver
import UIKit


class ListMovieVC : UIViewController {
    @Injected var viewModel : ListMovieVM
    
    @IBOutlet var listMovieCollection: MovieListCollectionView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Popular Movies"
        viewModel.getMovieList()
        
        viewModel.movieListUiState.bind { [weak self] movielist in
            self?.listMovieCollection.collectionMovieList = movielist
            self?.listMovieCollection.reloadData()
        }
        
        viewModel.loadingUiState.bind { [weak self] loading in
            //self?.activityIndicator.isHidden = !loading
            if loading {
                self?.activityIndicator.startAnimating()
                self?.activityIndicator.isHidden = false
            } else {
                self?.activityIndicator.stopAnimating()
                self?.activityIndicator.isHidden = true
            }
            
        }
        
        listMovieCollection.register(UINib(nibName: MovieItemCell.identifier, bundle: nil), forCellWithReuseIdentifier: MovieItemCell.identifier)
        listMovieCollection.dataSource = listMovieCollection
        listMovieCollection.delegate = listMovieCollection
        
    }
    
}
