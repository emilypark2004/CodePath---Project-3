//
//  Movie.swift
//  Flixster
//
//  Created by Emily Park on 3/3/23.
//

import Foundation

struct Movie{
    let movieTitle: String
    let movieOverview: String
    let moviePopularity: String
    let moviePosterPath: URL
    let movieVoteAverage: String
    let movieVoteCount: String
}

extension Movie{
    static var mockMovies: [Movie] = [
        Movie(movieTitle: "Knock at the Cabin",
              movieOverview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
              moviePopularity: "4083.09",
              moviePosterPath: URL(string:"https://image.tmdb.org/t/p/w500/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!,
              movieVoteAverage: "6.5",
              movieVoteCount: "639"),
        Movie(movieTitle: "Die Hart", movieOverview: "Follows a fictionalized version of Kevin Hart, as he tries to become an action movie star. He attends a school run by Ron Wilcox, where he attempts to learn the ropes on how to become one of the industry's most coveted action stars.", moviePopularity: "990.702", moviePosterPath: URL(string:"https://image.tmdb.org/t/p/w500/1EnBjTJ5utgT1OXYBZ8YwByRCzP.jpg")!, movieVoteAverage: "6.6", movieVoteCount: "93"),
        Movie(movieTitle: "The Offering", movieOverview: "In the wake of a young Jewish girl’s disappearance, the son of a Hasidic funeral director returns home with his pregnant wife in hopes of reconciling with his father. Little do they know that directly beneath them in the family morgue, an ancient evil with sinister plans for the unborn child lurks inside a mysterious corpse.", moviePopularity: "635.501", moviePosterPath: URL(string:"https://image.tmdb.org/t/p/w500/tbaTFgGIaTL1Uhd0SMob6Dhi5cK.jpg")!, movieVoteAverage: "5.7", movieVoteCount: "98"),
        Movie(movieTitle: "M3GAN", movieOverview: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.", moviePopularity: "1731.622", moviePosterPath: URL(string:"https://image.tmdb.org/t/p/w500/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg")!, movieVoteAverage: "7.5", movieVoteCount: "1891"),
        Movie(movieTitle: "Devotion", movieOverview: "The harrowing true story of two elite US Navy fighter pilots during the Korean War. Their heroic sacrifices would ultimately make them the Navy's most celebrated wingmen.", moviePopularity: "796.758", moviePosterPath: URL(string: "https://image.tmdb.org/t/p/w500/lwybGlEEJtXZM3ynY19PNwNlPn9.jpg")!, movieVoteAverage: "7.4", movieVoteCount: "352")]
}
