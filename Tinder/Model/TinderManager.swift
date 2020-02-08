//
//  TinderManager.swift
//  Tinder
//
//  Created by Patrick Yin on 2/6/20.
//  Copyright © 2020 Patrick Yin. All rights reserved.
//

import Foundation
import UIKit

class TinderManager {
    var preferenceList: [Person] = []
    
    static var shared = TinderManager()
    
    private init() {
        //woohoo
    }
    
    func clear() {
        preferenceList = []
    }
    
    func addPreference(name: String, image: UIImage, liked: Bool) {
        preferenceList.append(Person(name: name, image: image, liked: liked))
    }
    
    func getPreferenceImage(index: Int) -> UIImage {
        return preferenceList[index].image
    }
    
    func getPreferenceText(index: Int) -> String {
        return preferenceList[index].getText()
    }
    
    func getSize() -> Int {
        return preferenceList.count
    }
}
