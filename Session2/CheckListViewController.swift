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
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
       var firstItem = CheckListItem()
        firstItem.title = "New task"
        items.append(firstItem)
        
        var secondItem = CheckListItem()
        secondItem.title = "New task 2"
        items.append(secondItem)
        
        var thirdItem = CheckListItem()
        thirdItem.title = "New task 3"
        thirdItem.ticked = true
        items.append(thirdItem)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CheckItem") as UITableViewCell
        
        let label = cell.viewWithTag(99) as UILabel
        
//        if let cell = tableView.cellForRowAtIndexPath(indexPath){
//            label.text = "Hello"
//        }
        
        let item = items[indexPath.row]
        
        label.text = item.title
        
        
        configTick(cell, item: item)
        return cell
        
    
    }
    
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
        if let cell = tableView.cellForRowAtIndexPath(indexPath){
            
            if let cell = tableView.cellForRowAtIndexPath(indexPath){
                let item = items[indexPath.row]
                configTick(cell, item: item)
                
            }
            
            println("User selected cell")
            let item = items[indexPath.row]
            item.ticked = !item.ticked
            
            if item.ticked == true{
            cell.accessoryType = .None
                
            } else {
                cell.accessoryType = .Checkmark
            }
            
        }
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        tableView.reloadData()
    }
    
    func configTick(cell: UITableViewCell, item: CheckListItem){
        
        if item.ticked == true{
            cell.accessoryType = .Checkmark
            
        } else {
            cell.accessoryType = .None
        }

    }
    
}


