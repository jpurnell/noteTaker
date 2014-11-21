//
//  NotesTableViewController.swift
//  noteTaker
//
//  Created by Justin Purnell on 11/21/14.
//  Copyright (c) 2014 JP Enterprises, Inc. All rights reserved.
//

import UIKit

class NotesTableViewController: UITableViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Uncomment the following line to preserve selection between presentations
//        // self.clearsSelectionOnViewWillAppear = false
//
//        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    
    var notes:NSArray
    
    required init(coder aDecoder: NSCoder) {
        notes = ["One", "Two", "Three", "Four", "Five"]
        
        super.init(coder: aDecoder)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("noteCell") as UITableViewCell
        
        cell.textLabel?.text = notes[indexPath.row] as NSString
        
        return cell
    }

}
