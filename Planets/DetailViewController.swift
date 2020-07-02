//
//  DetailViewController.swift
//  Planets
//
//  Created by Olivia Edwards on 6/29/20.
//  Copyright © 2020 Bounding-22 LLC. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var planet : Planet!
    
    @IBOutlet weak var planetImage: UIImageView!
    
    @IBOutlet weak var planetTitle: UILabel!
    
    @IBOutlet weak var longDescription: UILabel!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var yearLengthLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    planetImage.image = planet.image
        planetTitle.text = planet.name
        longDescription.text = planet.longDescription
        distanceLabel.text = String(format:"%f", planet.distFromSun!)
        funFactLabel.text = planet.funFact
        yearLengthLabel.text = String(format:"%f", planet.lengthOfYear!)
        diameterLabel.text = String(format:"%f", planet.diameter!)
        
        
        
        
        
        
        
        
        
        
        
        
       
    }
    
    @IBAction func learnMoreButtonPressed(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
