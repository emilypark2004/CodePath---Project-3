//
//  MovieCell.swift
//  Flixster
//
//  Created by Emily Park on 3/3/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with movie: Movie) {
        movieTitleLabel.text = movie.movieTitle
        movieTextField.text = movie.movieOverview

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movie.moviePosterPath, into: movieImageView)
    }
}
