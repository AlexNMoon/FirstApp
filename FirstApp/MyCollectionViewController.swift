//
//  MyCollectionViewController.swift
//  FirstApp
//
//  Created by Alexandra on 03.09.15.
//  Copyright (c) 2015 Alexandra. All rights reserved.
//

import UIKit

let reuseIdentifier = "Cell"

class MyCollectionViewController: UICollectionViewController, UICollectionViewDataSource, UICollectionViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
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
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! MyCollectionViewCell
        let firstImage = UIImage(named: "sun.png")
        let secondImage = UIImage(named: "Full_moon.png")
        cell.imageView?.image = firstImage
        cell.lablel?.text = "\(indexPath.row + 1)"
    
        return cell
    }
    
}
