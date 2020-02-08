//
//  Person.swift
//  Tinder
//
//  Created by Patrick Yin on 2/6/20.
//  Copyright © 2020 Patrick Yin. All rights reserved.
//

import Foundation
import UIKit

class Person {
    var name: String
    var image: UIImage
    var liked: Bool
    
//    var text:String {
//        get {
//            if liked {
//                return "Loves " + name
//            } else {
//                return "Despises " + name
//            }
//        }
//    }
    
    init(name: String, image: UIImage, liked: Bool) {
        self.name = name
        self.image = image
        self.liked = liked
    }
    
    func getText() -> String {
        if liked {
            return "Loves " + name
        } else {
            return "Despises " + name
        }
    }
}
