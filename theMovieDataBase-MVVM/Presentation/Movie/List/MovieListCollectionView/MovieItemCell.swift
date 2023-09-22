//
//  CollectionMovieItemCell.swift
//  theMovieDataBase-MVVM
//
//  Created by Juan Armando Frías Ramírez on 20/09/23.
//

import UIKit


class MovieItemCell : UICollectionViewCell {
    static let identifier = "MovieItemCell"
    
    
    @IBOutlet var shadow: UIView!
    @IBOutlet var card: UIView!
    @IBOutlet var image: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var date: UILabel!
    
    var item: Result2? = nil
    func configure(item: Result2) {
        self.item = item
        
        name.text = item.title
        date.text = item.releaseDate
        
        image.image = nil
        image.load(url: item.posterPath.imageUrl())
    }
}
