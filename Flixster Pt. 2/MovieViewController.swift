//
//  MovieViewController.swift
//  Flixster
//
//  Created by Emily Park on 3/3/23.
//

import UIKit

class MovieViewController: UIViewController, UITableViewDataSource{
    @objc func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    @objc(tableView:cellForRowAtIndexPath:) func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell

        let movie = movies[indexPath.row]
        cell.configure(with: movie)
        return cell
    }
    
    func viewWillAppear(){
        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    @IBOutlet weak var tableView: UITableView!
    var movies: [Movie] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        movies = Movie.mockMovies
        tableView.dataSource = self;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell),
           let detailViewController = segue.destination as? DetailViewController {
            let movie = movies[indexPath.row]
            detailViewController.movie = movie
        }

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
    }
    
}
