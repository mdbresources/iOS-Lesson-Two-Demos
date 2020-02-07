//
//  TinderVC.swift
//  Tinder
//
//  Created by Patrick Yin on 1/31/20.
//  Copyright © 2020 Patrick Yin. All rights reserved.
//

import UIKit

class TinderVC: UIViewController {

    @IBOutlet weak var preferenceTableView: UITableView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var numberOfViewsLabel: UILabel!
    var numberOfViews = 0 {
        didSet {
            numberOfViewsLabel.text = String(numberOfViews)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generatePerson()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        preferenceTableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        numberOfViews += 1
        //numberOfViewsLabel.text = String(numberOfViews)
    }
    
    @IBAction func reject(_ sender: Any) {
        if let real_name = name.text {
            TinderManager.shared.addPreference(name: real_name, image: Constants.getImageFor(name: real_name), liked: false)
        }
        preferenceTableView.reloadData()
        generatePerson()
    }
    
    @IBAction func accept(_ sender: Any) {
        if let real_name = name.text {
            TinderManager.shared.addPreference(name: real_name, image: Constants.getImageFor(name: real_name), liked: true)
        }
        preferenceTableView.reloadData()
        generatePerson()
    }
    
    func generatePerson() {
        name.text = Constants.names.randomElement()
        if let real_name = name.text {
            picture.image = Constants.getImageFor(name: real_name)
        }
    }
}

