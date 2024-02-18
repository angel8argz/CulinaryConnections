//
//  FirestoreUser.swift
//  Culinary Connections
//
//  Created by Gabriel Santacruz on 2/17/24.
//

import Foundation
import FirebaseFirestoreSwift

public struct FirestoreUser: Codable, Equatable {
    @DocumentID var id: String?
    let name: String
    let city: String
    let bio: String
    let profilePic: String
    let banner: String
    let friends: [String]
    var recipes: [String]
    let liked: [String]
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case birthDate
        case bio
        case picture
    }
}

