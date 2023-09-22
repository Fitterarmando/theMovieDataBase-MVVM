//
//  MovieListCollectionView.swift
//  theMovieDataBase-MVVM
//
//  Created by Juan Armando Frías Ramírez on 20/09/23.
//

import UIKit

class MovieListCollectionView: UICollectionView {
    var collectionMovieList: [Result2] = []
    var onTap: (Result2) -> Void = { movie in }
}

extension MovieListCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.layer.bounds.width/2
        return CGSize(width: width , height: width*(245/131))
        
    }
}

extension MovieListCollectionView : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { collectionMovieList.count }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieItemCell.identifier, for: indexPath) as! MovieItemCell
        let index = indexPath.item
        cell.configure(item: collectionMovieList[index])
        return cell
    }
    

}
