//
//  ViewController.swift
//  TableViews
//
//  Created by Oscar Swanros on 4/12/15.
//  Copyright (c) 2015 MobileCoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableView: UITableView {
        let tv = UITableView(frame: self.view.bounds, style: .Plain)
        tv.dataSource = self
        tv.delegate = self
        tv.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "Cell")
        return tv
    }
    
    let bands = [
        "Keane",
        "Nightwish",
        "Manchester Orchestra",
        "As I Lay Dying",
        "Sixpence None The Richer",
        "Rise Against",
        "Foster The People"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "MobileCoder.mx"
        self.view.addSubview(self.tableView)
    }
    
    
    // MARK - TableView Datasource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.bands.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as? UITableViewCell
        
        cell?.textLabel?.text = bands[indexPath.row]
        
        return cell!
    }
    
    
    // MARK - TableView Delegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
}

