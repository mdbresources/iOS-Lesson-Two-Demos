//
//  PreferenceCell.swift
//  Tinder
//
//  Created by Patrick Yin on 1/31/20.
//  Copyright © 2020 Patrick Yin. All rights reserved.
//

import Foundation
import UIKit

class PreferenceCell: UITableViewCell {
    @IBOutlet weak var preferenceText: UILabel!
    @IBOutlet weak var preferenceImage: UIImageView!
    
    var person: Person? {
        didSet {
            preferenceText.text = person?.text
            preferenceImage.image = person?.image
        }
    }
}
