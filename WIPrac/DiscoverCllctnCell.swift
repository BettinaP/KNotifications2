//
//  DiscoverCllctnCell.swift
//  WIPrac
//
//  Created by Bettina on 4/3/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import UIKit

class DiscoverCllctnCell: UICollectionViewCell {
    
    @IBOutlet weak var cllctnImageView: UIImageView!
    
    @IBOutlet weak var toFavButton: UIButton!
    
    func  configureDiscoverCollectionCell(photo: UIImage, indexPath: IndexPath) {
        print("cellconfig func in cell subclass")
        
        //        photo.image = UIImage(named: "dress\(indexPath.row + 1)")
        cllctnImageView.image = UIImage(named: "dress\(indexPath.row + 1)")
        //UIImage(named: "dress\(indexPath.row + 1)")
        //(named: photo.id)
        
    }
}
