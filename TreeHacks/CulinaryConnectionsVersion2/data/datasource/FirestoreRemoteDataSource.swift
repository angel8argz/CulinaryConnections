//
//  File.swift
//  Culinary Connections
//
//  Created by Gabriel Santacruz on 2/17/24.
//

import Foundation

import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift

class FireStoreRemoteDataSource {
    static let shared = FirestoreRemoteDataSource()
    private let db = Firestore.firestore()
    private init(){}
    
    func getUserId() throws -> String {
        guard let userId = Auth.auth().currentUser?.uid else {
            throw AuthErrorModel(message: "User not signed in.")
        }
        return userId
    }
    
    func createUserProfile(name: String, city: String, bio: String, picture: String) async throws{
        let firestoreUser = FirestoreUser(name: name, city: city, bio: bio, picture: picture, recipes: [])
        
        try db.collection("users").document(self.getUserId()).setData(from: firestoreUser)
    }
    
    func getUserProfile(userId: String) async throws -> FirestoreUser{
        let result = try await db.collection("users").document(userId).getDocument()
        
        let user = try result.data(as: FirestoreUser.self)
        return user
    }
    
    // Recipes
    func getUserRecipes(userId: String) async throws -> [FirestoreRecipe]{
        let userId = try self.getUserId()
        let firestoreUser = getUserProfile(userId: userId)
        let recipeIds = firestoreUser.recipes
        
        var recipes: [FirestoreRecipe]
        
        for recipeId in recipeIds {
            let recipe = try await db.collection("recipes").whereField()
            recipes.append()
        }
        let result = try await db.collection("").whereField()
    }
}
