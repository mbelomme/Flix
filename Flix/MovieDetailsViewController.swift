//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Marielle Belomme on 3/4/22.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var movieCover: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let coverPath = movie["poster_path"] as! String
        let coverUrl = URL(string: baseUrl + coverPath)
        movieCover.af.setImage(withURL: coverUrl!)

        let posterPath = movie["backdrop_path"] as! String
        let posterUrl = URL(string: "https://image.tmdb.org/t/p/w780" + posterPath)
        posterImage.af.setImage(withURL: posterUrl!)
        
    }
    
/**
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
**/

}
