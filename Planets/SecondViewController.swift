//
//  SecondViewController.swift
//  Planets
//
//  Created by Michael Feldmann on 6/29/20.
//  Copyright © 2020 Bounding-22 LLC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var planetToSend: Planet!

    @IBOutlet weak var planetCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        planetCollectionView.allowsSelection = true
        planetCollectionView.delegate = self
        planetCollectionView.dataSource = self
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return globalPlanets.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
       return CGSize(width: 200, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = planetCollectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCellID", for: indexPath) as! CollectionViewCell
        let item = globalPlanets[indexPath.row]
        cell.planetImage!.image = item.image!
        cell.planetName!.text = item.name!
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = planetCollectionView.cellForItem(at: indexPath)
        collectionView.deselectItem(at: indexPath, animated: true)
        planetToSend = globalPlanets[indexPath.row]
        
        performSegue(withIdentifier: "detailSegue", sender: cell)
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let newViewController = segue.destination as! DetailViewController
        newViewController.planet = planetToSend
        
    }
    

}

