//
//  TinderVC-TableView.swift
//  Tinder
//
//  Created by Patrick Yin on 1/31/20.
//  Copyright © 2020 Patrick Yin. All rights reserved.
//

import Foundation
import UIKit

extension TinderVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return preferences.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PreferenceCell", for: indexPath) as! PreferenceCell
        cell.preference.text = preferences[indexPath.row]
        return cell
    }
}
