////
////  FavoritesVC.swift
////  WIPrac
////
////  Created by Bettina on 4/3/17.
////  Copyright © 2017 Bettina Prophete. All rights reserved.
////
//
//import UIKit
//import CoreData
//
//class FavoritesVC: UIViewController, UITableViewDelegate, UITableViewDataSource, NSFetchedResultsControllerDelegate {
//    
//    //    @IBOutlet weak var favoritesTableView: UITableView!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        
//        //        favoritesTableView.delegate = self
//        //        favoritesTableView.dataSource = self
//        //
//        //        attemptFetch()
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    
//    //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    //        return UITableViewCell()
//    //    }
//    //
//    //    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//    //        return 4 //savedImagesArray.count
//    //    }
//    //
//    //    func tableView(_ tableView: UITableView, canEditRowAt:IndexPath) -> Bool {
//    //        return true
//    //    }
//    //
//    //    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//    //
//    ////        if editingStyle == UITableViewCellEditingStyle.Delete {
//    ////            let savedFavorite = savedFavorites[indexPath.row]
//    ////            store.managedObjectContext.deleteObject(savedFavorite)
//    ////            savedFavorites.removeAtIndex(indexPath.row)
//    ////            favoritesTableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
//    ////
//    ////            store.fetchData()
//    ////            store.saveContext()
//    ////            favoritesTableView.reloadData()
//    ////        }
//    //    }
//    //
//    //    func attemptFetch() {
//    //        let fetchRequest: NSFetchRequest<FavoritePhoto> = FavoritePhoto.fetchRequest()
//    //        let dateSort = NSSortDescriptor(key: "savedAt", ascending: false)
//    //        fetchRequest.sortDescriptors = [dateSort]
//    //
//    //        let fetchedResultsController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
//    //
//    //        controller = fetchedResultsController
//    //
//    //        controller.delegate = self
//    //
//    //        do {
//    //            try controller.performFetch()
//    //        } catch {
//    //            let error = error as NSError
//    //            print("\(error)")
//    //        }
//    //    }
//    //
//    //    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
//    //        favoritesTableView.beginUpdates()
//    //    }
//    //    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
//    //        favoritesTableView.endUpdates()
//    //    }
//    //
//    ////    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
//    ////        
//    ////    }
//
//
//}
