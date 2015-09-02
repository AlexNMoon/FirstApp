//
//  MyTableViewController.swift
//  FirstApp
//
//  Created by Alexandra on 02.09.15.
//  Copyright (c) 2015 Alexandra. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    @IBOutlet var muTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

   // override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
   //     return 1
  //  }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return 1000
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = "\(indexPath.row + 1)"
        return cell
    }
    
  
}
