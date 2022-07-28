//
//  SecondView.swift
//  UserApplication
//
//  Created by Liban Abdinur on 7/28/22.
//

import SwiftUI

struct SecondView: View {
    
    @StateObject var viewModel = UsersViewModel()
    @State private var choice: Int = 0
    
    
    var body: some View {
        
    
        
        List{
            
            ForEach(viewModel.user, id:\.self) { userz in
                
                
                HStack{
                    
                
                
                    Text(userz.lastName)
                        .padding()
                    
                    Text(userz.groupName)
                    
                    Text(userz.designation ?? "")
                    
                    
                }//end of vstack
                
                
            }//end of forEach
            
            
        }
        //end of list
        .onAppear{
            viewModel.getData()
        }
        
        
        
        
    }// end of body
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
