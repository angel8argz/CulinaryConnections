//
//  FirestoreRecipe.swift
//  Culinary Connections
//
//  Created by Gabriel Santacruz on 2/17/24.
//

import Foundation
import FirebaseFirestoreSwift

public struct FirestoreRecipe: Codable{
    @DocumentID var id: String?
    let name: String
    let ingredients: [String]
    let picture: String
    var rating: Int
}
