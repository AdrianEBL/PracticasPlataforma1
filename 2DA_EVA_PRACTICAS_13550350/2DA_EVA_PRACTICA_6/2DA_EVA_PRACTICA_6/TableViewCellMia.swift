//
//  TableViewCellMia.swift
//  2DA_EVA_PRACTICA_6
//
//  Created by  on 31/03/17.
//
//

import UIKit

class TableViewCellMia: UITableViewCell {
    
    @IBOutlet var lblNombre: UILabel!
    @IBOutlet var lblLema: UILabel!
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
