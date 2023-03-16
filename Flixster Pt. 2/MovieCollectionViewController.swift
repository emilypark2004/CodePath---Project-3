//
//  MovieCollectionViewController.swift
//  Flixster
//
//  Created by Emily Park on 3/6/23.
//

import UIKit

class MovieCollectionViewController: UICollectionViewController {
    
    let movies = ["Knock at the Cabin", "Die Hart", "The Offering", "M3GAN", "Devotion"]
    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = movieCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        
        cell.movieCollectionImageView.image = UIImage(named: movies[indexPath.row])
        
        return cell
    }
}

