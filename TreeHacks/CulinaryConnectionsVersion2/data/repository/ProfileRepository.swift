//
//  ProfileRepository.swift
//  Culinary Connections
//
//  Created by Gabriel Santacruz on 2/17/24.
//

import Foundation
import UIKit

class ProfileRepository {
    private init() {}
    
    static let shared = ProfileRepository()
    
    private let authDataSource: AuthRemoteDataSource = AuthRemoteDataSource.shared
    private let storageDataSource: StorageRemoteDataSource = StorageRemoteDataSource.shared
    private let firestoreDataSource: FirestoreRemoteDataSource = FirestoreRemoteDataSource.shared
    
    func signIn(controller: UIViewController) async throws {
        try await authDataSource.signIn(controller: controller, authType: .existingUser)
    }
    
    func signUp(controller: UIViewController, from createProfileModel: CreateProfileModel) async throws {
        try await authDataSource.signIn(controller: controller, authType: .newUser)
        
        let fileName = try await storageDataSource.uploadUserPictures(createProfileModel.picture)

        try await firestoreDataSource.createUserProfile(name: createProfileModel.name, city: createProfileModel.city, bio: createProfileModel.bio, picture: fileName)
    }
    
    func getUserProfile() async throws -> FirestoreUser{
        let userId = firestoreDataSource.getUserId()
        return try await firestoreDataSource.getUserProfile(userId: userId)
    }
    
    func getLikedRecipesFromUser() async throws -> [Recipe] {
        let user = getUserProfile()
        
    }
}
