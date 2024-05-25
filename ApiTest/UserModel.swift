//
//  UserModel.swift
//  ApiTest
//
//  Created by Pedro Delmondes  on 23/05/2024.
//

import Foundation

struct User: Codable {
    let id: Int
    let name: String
    let email: String
    let company: Company
}

struct Company: Codable {
    let name: String
}
