//
//  DemoTableViewCell.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Alfredo Candia Villagomez on 8/12/23.
//

import UIKit

class DemoTableViewCell: UITableViewCell {
    
    static let nibName = String(describing: DemoTableViewCell.self)
    
    // MARK: - Outlets
    @IBOutlet weak var backgorundView: UIView!
    @IBOutlet weak var nombreLable: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var celdaImageview: UIImageView! {
        didSet {
//            celdaImageview.layer.borderWidth = 1
            celdaImageview.layer.masksToBounds = false
//            celdaImageview.layer.borderColor = UIColor.black.cgColor
            celdaImageview.layer.cornerRadius = celdaImageview.frame.height/2
            celdaImageview.clipsToBounds = true
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
