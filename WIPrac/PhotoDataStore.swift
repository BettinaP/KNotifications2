//
//  PhotoDataStore.swift
//  WIPrac
//
//  Created by Bettina on 4/3/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import Foundation
import UIKit

class PhotoDataStore {
    static let sharedInstance = PhotoDataStore()
    
    var imageArray = [UIImage]()
    var image: UIImage!
    
    func createImageArray() {
        for i in 1...56 {
            image = UIImage(named: "dress\(i)")
            imageArray.append(image)
        }
    }
}
