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
    
    let listLayout = ListFlowLayout()
    let gridLayout = GridFlowLayout()
    
    func  configureDiscoverCollectionCell(photo: UIImage, indexPath: IndexPath) {
        
        cllctnImageView.image = UIImage(named: "dress\(indexPath.row + 1)")     
        
    }
}
