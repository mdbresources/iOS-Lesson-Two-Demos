//
//  ProfileVC.swift
//  Tinder
//
//  Created by Patrick Yin on 2/6/20.
//  Copyright © 2020 Patrick Yin. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func clearPressed(_ sender: Any) {
        TinderManager.shared.clear()
    }
}
