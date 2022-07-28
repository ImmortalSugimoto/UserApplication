//
//  practiceView.swift
//  UserApplication
//
//  Created by Liban Abdinur on 7/28/22.
//

import SwiftUI

struct practiceView: View {
    
    @StateObject var viewModel = UsersViewModel()
    @State private var choice: Int = 0
    
    
    var body: some View {
        
        
        VStack{
            
            Picker("choice", selection: $choice){
                
                Text("first label")
                    .tag(0)
                
                Text("second label")
                    .tag(1)
                
            }.pickerStyle(.segmented)
            
            
            
        }
        
        
        
    }//end of body
}

struct practiceView_Previews: PreviewProvider {
    static var previews: some View {
        practiceView()
    }
}
