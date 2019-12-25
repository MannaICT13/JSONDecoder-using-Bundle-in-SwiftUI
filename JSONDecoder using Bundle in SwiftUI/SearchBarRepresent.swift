//
//  SearchBarRepresent.swift
//  JSONDecoder using Bundle in SwiftUI
//
//  Created by Md Khaled Hasan Manna on 25/12/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

struct SearchBarRepresent : UIViewRepresentable{
    
    
    @Binding var text : String
    
    
    
    class Coordinator : NSObject, UISearchBarDelegate{
        
        @Binding var text : String
        
        init(text : Binding<String>){
            
            _text = text
            
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
        
        
        
    }
    
   
    func makeCoordinator() -> SearchBarRepresent.Coordinator {
        
        return Coordinator(text: $text)
        
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchBarRepresent>) -> UISearchBar {
        
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBarRepresent>) {
        uiView.text = text
    }
    
    
    
}
