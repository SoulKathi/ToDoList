//
//  User.swift
//  ToDoList
//
//  Created by katja.ruebel on 07.07.24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
