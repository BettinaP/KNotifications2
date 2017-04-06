//
//  FavoritesVC.swift
//  WIPrac
//
//  Created by Bettina on 4/3/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import UIKit
import CoreData

class FavoritesVC: UIViewController, UITableViewDelegate, UITableViewDataSource, NSFetchedResultsControllerDelegate {
    
    @IBOutlet weak var favoritesTableView: UITableView!
  
    @IBOutlet weak var favoritesIcon: UITabBarItem!
   
    var controller: NSFetchedResultsController<FavPic>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        favoritesTableView.delegate = self
        favoritesTableView.dataSource = self
        
        attemptFetch()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if let sections = controller.sections {
            return sections.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let sections = controller.sections {
            let sectionInfo = sections[section]
            return sectionInfo.numberOfObjects
        }
        return 0 //savedImagesArray.count
    }
    
    func configureCell(cell: FavoritesTableCell, indexPath: IndexPath){
        
        let favorite = controller.object(at: indexPath as IndexPath)
        cell.configureFavoritesTableViewCell(favorite: favorite, indexPath: indexPath)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoritesTableCell", for: indexPath) as! FavoritesTableCell
        configureCell(cell: cell, indexPath: indexPath)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, canEditRowAt:IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        //        if editingStyle == UITableViewCellEditingStyle.Delete {
        //            let savedFavorite = savedFavorites[indexPath.row]
        //            store.managedObjectContext.deleteObject(savedFavorite)
        //            savedFavorites.removeAtIndex(indexPath.row)
        //            favoritesTableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        //
        //            store.fetchData()
        //            store.saveContext()
        //            favoritesTableView.reloadData()
        //        }
    }
    
    func attemptFetch() {
        let fetchRequest: NSFetchRequest<FavPic> = FavPic.fetchRequest()
        let dateSort = NSSortDescriptor(key: "savedAt", ascending: false)
        fetchRequest.sortDescriptors = [dateSort]
        
        let fetchedResultsController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        
        controller = fetchedResultsController
        
        controller.delegate = self
        
        do {
            try controller.performFetch()
        } catch {
            let error = error as NSError
            print("\(error)")
        }
    }
    
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        favoritesTableView.beginUpdates()
    }
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        favoritesTableView.endUpdates()
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        
    }
    
    @IBAction func favoritedBttnPressed(_ sender: Any) {
       // context.delete(<#T##object: NSManagedObject##NSManagedObject#>)
      //  context.delete(controller.object(at: ))
     //do  try(context.save()) catch error
    }
    
}
