//
//  UsersViewModel.swift
//  UserApplication
//
//  Created by Liban Abdinur on 7/28/22.
//

import Foundation

class UsersViewModel: ObservableObject{
    
    @Published var user: [Users] = []
    
    
    func getData(){
        
        guard let apiUrl = URL(string: "https://mocki.io/v1/6f225a3e-7016-4d4b-aa9e-f9ddac92e2ce") else {return}
        
        let task = URLSession.shared.dataTask(with: apiUrl) {[weak self] data, response, error in
            
            guard let data = data else{
                print(error?.localizedDescription)
                return
    
            }
            do{
                let result = try JSONDecoder().decode([Users].self, from: data)
                
                DispatchQueue.main.async {
                    self?.user = result.sorted { $0.lastName < $1.lastName}
                }
                
                
            } catch{
                print("error decoding : ", error)
            }
        }
        task.resume()
        
        
    }
    
    
    
}
