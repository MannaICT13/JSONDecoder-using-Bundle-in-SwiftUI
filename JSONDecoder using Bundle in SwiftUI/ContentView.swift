//
//  ContentView.swift
//  JSONDecoder using Bundle in SwiftUI
//
//  Created by Md Khaled Hasan Manna on 25/12/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    var person : [Person] = Bundle.main.decode("convertcsv.json")
    
    @State var searchTerm = ""
    
    var body: some View {
        
        VStack{
            
         SearchBarRepresent(text: $searchTerm)
            
            List(self.person.filter{ value in
            
                self.searchTerm.isEmpty ? true : value.Name.localizedCaseInsensitiveContains(self.searchTerm)
                
                })
            { value in
            
                Text(value.Name)
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(searchTerm: "")
    }
}
