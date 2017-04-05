//
//  DiscoverVC.swift
//  WIPrac
//
//  Created by Bettina on 4/3/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import UIKit

class DiscoverVC: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    let store = PhotoDataStore.sharedInstance
    let gridFlowLayout = GridFlowLayout()
    let listFlowLayout = ListFlowLayout()
    var isGridFlowLayoutUsed = false
    
  //  var photoGallery = [GalleryPhoto]()
    //let store = PhotoDataStore.sharedInstance
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        setupDataSource()
        setupInitialLayout()
    }
    
    
    
    @IBAction func segControlSwitchingLayout(_ sender: Any) { 
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            isGridFlowLayoutUsed = true
            UIView.animate(withDuration: 0.1, animations: { 
                self.collectionView.collectionViewLayout.invalidateLayout()
                self.collectionView.setCollectionViewLayout(self.gridFlowLayout, animated: true)
            })
        case 1:
            isGridFlowLayoutUsed = false
            UIView.animate(withDuration: 0.1, animations: { 
                self.collectionView.collectionViewLayout.invalidateLayout()
                self.collectionView.setCollectionViewLayout(self.listFlowLayout, animated: true)
            })
            
        default:
            break
            
            
//        case 0:
//            let vc = self.storyboard!.instantiateViewController(withIdentifier: "discoverCollection") as! DiscoverVC
//            self.present(vc, animated: true, completion: nil)
//        case 1:
//            let vc = self.storyboard!.instantiateViewController(withIdentifier: "discoverAsTable") as! DiscoverAsListVC
//            self.present(vc, animated: true, completion: nil)
//        default:
//            break
        }
        
    }
   
  
   
    @IBAction func saveAsFavButtonPressed(_ sender: Any) {
            //        var favoritedPhoto = FavoritePhoto(context: context)
            //
            //        ad.saveContext()
        
    }
}

extension DiscoverVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func setupDataSource(){
        
        store.createImageArray()
        collectionView.reloadData()
    
    }
    
    func setupInitialLayout() {
        isGridFlowLayoutUsed = true
        collectionView.collectionViewLayout = gridFlowLayout
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return store.imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "discoverCollCell", for: indexPath) as! DiscoverCllctnCell
       
        cell.configureDiscoverCollectionCell(photo: store.imageArray[indexPath.row], indexPath: indexPath)
        return cell
    }

}
