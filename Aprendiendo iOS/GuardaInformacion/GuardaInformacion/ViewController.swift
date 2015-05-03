//
//  ViewController.swift
//  GuardaInformacion
//
//  Created by Oscar Swanros on 4/19/15.
//  Copyright (c) 2015 MobileCoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    lazy var tableView: UITableView = {
        let tv = UITableView(frame: self.view.bounds, style: .Plain)
        tv.delegate = self
        tv.dataSource = self
        tv.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "Cell")
        return tv
        }()
    
    var rightBarButtonItem: UIBarButtonItem {
        return UIBarButtonItem(title: "Agregar", style: .Plain, target: self, action: "rightBarButtonItemTapped")
    }
    
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "MobileCoder.mx"
        self.view.addSubview(self.tableView)
        self.navigationItem.rightBarButtonItem = self.rightBarButtonItem
    }
    
    func rightBarButtonItemTapped() {
        var alertController = UIAlertController(title: "Agregar", message: "Agregar banda", preferredStyle: .Alert)
        alertController.addTextFieldWithConfigurationHandler { textField in
            textField.placeholder = "Nombre de la banda"
        }
        alertController.addAction(UIAlertAction(title: "Cancelar", style: .Destructive, handler: nil))
        alertController.addAction(UIAlertAction(title: "Agregar", style: .Default, handler: { alertAction in
            let textField = alertController.textFields?[0] as? UITextField
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                addBand(textField!.text)
                self.tableView.reloadData()
            })
        }))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    // MARK: - TableView Datasource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bands.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as? UITableViewCell
        
        cell?.textLabel?.text = bands[indexPath.row]
        
        return cell!
    }
    
    
    // MARK: - TableView Delegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    
}

