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
        return TinderManager.shared.getSize()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PreferenceCell", for: indexPath) as! PreferenceCell
        cell.person = TinderManager.shared.preferenceList[indexPath.row]
        //cell.preferenceImage.image = TinderManager.shared.getPreferenceImage(index: indexPath.row)
        //cell.preferenceText.text = TinderManager.shared.getPreferenceText(index: indexPath.row)
        return cell
    }
}
