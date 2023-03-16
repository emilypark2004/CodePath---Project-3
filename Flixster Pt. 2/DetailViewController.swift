//
//  DetailViewController.swift
//  Flixster
//
//  Created by Emily Park on 3/3/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!

    @IBOutlet weak var movieVoteAverageLabel: UILabel!
    
    @IBOutlet weak var movieVoteCountLabel: UILabel!
    
    @IBOutlet weak var moviePopularityLabel: UILabel!
    @IBOutlet weak var movieOverviewLabel: UILabel!
    
    var movie: Movie!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Nuke.loadImage(with: movie.moviePosterPath, into: movieImageView)
        
        movieTitleLabel.text = movie.movieTitle
        movieVoteAverageLabel.text = movie.movieVoteAverage
        movieVoteCountLabel.text = movie.movieVoteCount
        moviePopularityLabel.text = movie.moviePopularity
        movieOverviewLabel.text = movie.movieOverview
        
    }
}
