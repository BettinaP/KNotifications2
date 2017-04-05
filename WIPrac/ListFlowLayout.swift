//
//  ListFlowLayout.swift
//  WIPrac
//
//  Created by Bettina on 4/4/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import Foundation
import UIKit

class ListFlowLayout: UICollectionViewFlowLayout {
    
    let itemHeight: CGFloat = 310
    
    override init() {
        super.init()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init()
        setupLayout()
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        minimumInteritemSpacing = 0
        minimumLineSpacing = 1
        scrollDirection = .vertical
    }
    
    func itemWitdth() -> CGFloat {
        return collectionView!.frame.width
    }
    
    override var itemSize: CGSize {
        set {
            self.itemSize = CGSize(width: itemWitdth(), height: itemHeight)
        }
        get {
            return CGSize(width: itemWitdth(), height: itemHeight)
        }
    }
    
    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint {
        return (collectionView?.contentOffset)!
    }
}
