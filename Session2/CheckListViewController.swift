//
//  ViewController.swift
//  Session2
//
//  Created by Joel Trew on 12/02/2015.
//  Copyright (c) 2015 Joel Trew. All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {
    
    var items = [CheckListItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CheckItem") as UITableViewCell
        
        let label = cell.viewWithTag(99) as UILabel
        
//        if let cell = tableView.cellForRowAtIndexPath(indexPath){
//            label.text = "Hello"
//        }
        
        label.text = "Hello"
        
        return cell
    }
    
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
        if let cell = tableView.cellForRowAtIndexPath(indexPath){
            
            println("User selected cell")
            
            cell.accessoryType = .None
        }
    }
}


