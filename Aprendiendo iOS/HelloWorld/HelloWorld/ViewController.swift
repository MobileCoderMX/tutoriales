//
//  ViewController.swift
//  HelloWorld
//
//  Created by Oscar Swanros on 4/6/15.
//  Copyright (c) 2015 MobileCoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(sender: AnyObject) {
        let alertController = UIAlertController(title: "Hola!", message: "Bienvenido a MobileCoder.mx", preferredStyle: .Alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
    }

}

