//
//  ContentView.swift
//  UserApplication
//
//  Created by Liban Abdinur on 7/28/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = UsersViewModel()
    @State private var choice: Int = 0
    

    
    var body: some View {
        
        VStack{
            
            Text("Company Info")
            
            Picker("choice", selection: $choice){
                
                Text("Users")
                    .tag(0)
                
                Text("Info")
                    .tag(1)
                
                
            }.pickerStyle(.segmented)
            
            if choice == 0 {
            
                
                List{
    
                    ForEach(viewModel.user, id: \.self) { theUser in
    
                        VStack(alignment: .center){
    
                            Text(theUser.lastName)
                                
    
    
    
    
                        }
    
                    }
    
    
    
                }// end of list
                .onAppear{
                    viewModel.getData()
                }
                
                
            }//end of if
            else{
                SecondView()
            }
            
            
        }
        
        
        

            
//            List{
//
//                ForEach(viewModel.user, id: \.self) { theUser in
//
//                    VStack{
//
//                        Text(theUser.lastName)
//
//
//
//
//                    }
//
//                }
//
//
//
//            }// end of list
//            .onAppear{
//                viewModel.getData()
//            }
            
            
            
        
        
        
        
    }//end of body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
