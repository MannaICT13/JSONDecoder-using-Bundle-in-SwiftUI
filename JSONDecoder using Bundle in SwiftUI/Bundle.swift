//
//  Bundle.swift
//  JSONDecoder using Bundle in SwiftUI
//
//  Created by Md Khaled Hasan Manna on 25/12/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation

extension Bundle{
    
    func decode<T: Codable>(_ file : String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError()
        }
        
        
        guard let data = try? Data(contentsOf: url)else{
            fatalError()
        }
        
        
        let decoder = JSONDecoder()
        
        guard let loadData = try? decoder.decode(T.self, from: data) else{
            fatalError("can not load \(file)")
            
        }
        
        return loadData
        
    }
    
    
}
