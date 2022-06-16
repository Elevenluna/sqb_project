//
//  ViewController.swift
//  sqb_project
//
//  Created by Малика on 12/06/22.
//

import UIKit

struct movie
{
   
    let movieName: String
    let movieDuration: String
    let releaseDate: String
}

class MoviesTableViewController: UITableViewController {
    let movies = [
    movie(movieName: "Iron man", movieDuration:"2 hours 6 mins" , releaseDate: " 2 May 2008"),
    movie( movieName: "Kiki's Delivery Servis", movieDuration: "1 hour 42 mins", releaseDate: "29 June 1989" ),
    movie( movieName: "Howl's moving castle", movieDuration: "1 hour 59 mins",releaseDate: "20 november 2004")
    ]

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.movies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)

        let country = self.movies[indexPath.row]
      cell.textLabel?.text = movie.movieDuration
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "movies"
    }
}
