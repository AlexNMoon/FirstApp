//
//  MyCollectionViewController.swift
//  FirstApp
//
//  Created by Alexandra on 03.09.15.
//  Copyright (c) 2015 Alexandra. All rights reserved.
//

import UIKit

let reuseIdentifier = "Cell"
let reuseBlueIdentifier = "Blue Cell"

class MyCollectionViewController: UICollectionViewController, UICollectionViewDataSource, UICollectionViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "MyBlueCollectionViewCell", bundle: nil)
        self.collectionView!.registerNib(nib, forCellWithReuseIdentifier: reuseBlueIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let firstImage = UIImage(named: "sun.png")
        let secondImage = UIImage(named: "Full_moon.png")
        if (indexPath.row + 1) % 2 == 0 {
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseBlueIdentifier, forIndexPath: indexPath) as! MyBlueCollectionViewCell
            cell.myLabel?.text = "\(indexPath.row + 1)"
            return cell
        } else {
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! MyCollectionViewCell
            cell.imageView?.image = firstImage
            cell.label?.text = "\(indexPath.row + 1)"
            return cell
        }
        
        
    }
    
}
