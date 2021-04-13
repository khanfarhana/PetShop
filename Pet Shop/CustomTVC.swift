//
//  CustomTVC.swift
//  Pet Shop
//
//  Created by TRYCATCH CLASSES on 04/03/21.
//

import UIKit

class CustomTVC: UITableViewCell {

    @IBOutlet weak var ageLb: UILabel!
    @IBOutlet weak var GenderLb: UILabel!
    @IBOutlet weak var breedlb: UILabel!
    @IBOutlet weak var namelb1: UILabel!
    @IBOutlet weak var imgV: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
