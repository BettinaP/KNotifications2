//
//  GridFlowLayout.swift
//  WIPrac
//
//  Created by Bettina on 4/4/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import Foundation
import UIKit

class GridFlowLayout: UICollectionViewFlowLayout {
    
    let itemHeight: CGFloat = 120
    
    override init() {
        super.init()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        minimumInteritemSpacing = 1.5
        minimumLineSpacing = 2
        scrollDirection = .vertical
    }
    
    func itemWidth() -> CGFloat {
        return ((collectionView!.frame.width)/3) - 1
    }
    
    override var itemSize: CGSize {
        set {
            self.itemSize = CGSize(width: itemWidth(), height: itemHeight)
        }
        get {
            return CGSize(width: itemWidth(), height: itemHeight)
        }
        
    }
    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint {
        return (collectionView?.contentOffset)!
    }
}
