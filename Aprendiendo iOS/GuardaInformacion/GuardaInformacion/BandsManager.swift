//
//  BandsManager.swift
//  GuardaInformacion
//
//  Created by Oscar Swanros on 5/2/15.
//  Copyright (c) 2015 MobileCoder. All rights reserved.
//

import Foundation

let userDefaults = NSUserDefaults.standardUserDefaults()
let bands_key = "bands"


var bands: [String] {
get {
    if let bands = userDefaults.objectForKey(bands_key) as? [String] {
        return bands
    }
    
    return []
}
}

func addBand(band: String) {
    var newBands = bands
    newBands.append(band)
    
    userDefaults.setObject(newBands, forKey: bands_key)
    userDefaults.synchronize()
}