//
//  TableViewCellMia.swift
//  2DA_EVA_5_RESTAURANTES_3
//
//  Created by  on 15/03/17.
//
//

import UIKit

class TableViewCellMia: UITableViewCell {
    
    @IBOutlet var lblNombre: UILabel!
    @IBOutlet var lblUbica: UILabel!
    @IBOutlet var lblDesc: UILabel!
    @IBOutlet var imgImagen: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
