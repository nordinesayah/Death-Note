//
//  CustomCell.swift
//  deathNote
//
//  Created by Nordine Sayah on 21/09/2018.
//  Copyright © 2018 Nordine Sayah. All rights reserved.
//

import Foundation

class CustomCell {
    
    // not init
    private init() { }
    
    static let shared = CustomCell()
    
    // Local variable
    var name: [String] = ["Sakura Haruno", "Lori Grimes", "Kenny McCormick"]
    var date: [String] = ["10 Octobre 2018 03:15:00", "20 Octobre 2018 03:15:00", "30 Octobre 2018 03:15:00"]
    var description: [String] = ["Démembrer", "Manger par des cannibales", "Foudroyer"]
}
