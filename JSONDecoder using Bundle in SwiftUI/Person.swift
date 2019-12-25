//
//  Person.swift
//  JSONDecoder using Bundle in SwiftUI
//
//  Created by Md Khaled Hasan Manna on 25/12/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation

struct Person : Codable ,Identifiable{
    
    let id = UUID() // must use this
    let Name : String
    let City : String
    let Dept :String
    
}
