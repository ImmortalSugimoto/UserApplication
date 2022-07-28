//
//  Users.swift
//  UserApplication
//
//  Created by Liban Abdinur on 7/28/22.
//

import Foundation

struct Users: Hashable, Codable{
    
    let id: Int
    let email: String
    let firstName: String?
    let groupName: String
    let designation: String?
    let lastName: String
    
    enum CodingKeys: String, CodingKey{
        
        case id
        case email
        case firstName = "first_name"
        case groupName = "group_name"
        case designation
        case lastName = "last_name"
    }
    
}




