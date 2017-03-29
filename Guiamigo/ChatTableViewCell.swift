//
//  ChatTableViewCell.swift
//  Guiamigo
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {

    @IBOutlet weak var chatView: UIImageView!
    @IBOutlet weak var chatBar: UINavigationBar!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
