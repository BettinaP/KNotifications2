//
//  FavoritesTableCell.swift
//  WIPrac
//
//  Created by Bettina on 4/5/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import UIKit

class FavoritesTableCell: UITableViewCell {

    @IBOutlet weak var favImageView: UIImageView!
    
    @IBOutlet weak var favNameLabel: UILabel!
    
    @IBOutlet weak var favoritedButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configureFavoritesTableViewCell(favorite: FavPic, indexPath: IndexPath) {
        
      favImageView.image = UIImage(named: "dress\(indexPath.row + 1)")
      favNameLabel.text = "Dress \(indexPath.row + 1)"
    }
}
