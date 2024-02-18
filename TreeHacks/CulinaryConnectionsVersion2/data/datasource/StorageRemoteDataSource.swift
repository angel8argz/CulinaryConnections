//
//  StorageRemoteDataSource.swift
//  Culinary Connections
//
//  Created by Gabriel Santacruz on 2/17/24.
//

import Foundation


import Firebase
import FirebaseFirestoreSwift
import SwiftUI


class StorageRemoteDataSource {
    private static let IMG_MAX_SIZE: Int64 = 10 * 1024 * 1024
    static let shared = StorageRemoteDataSource()
    private let storage = Storage.storage().reference()
    private var userId: String?
    
    private func uploadUserPicture(picture: UIImage) async throws -> String{
        guard let data = picture.jpegData(compressionQuality: 1.0) else {
            throw StorageError(message: "No data found in picture")
        }
        let fileName = UUID().uuidString + ".jpg"
        let picRef = storage.child("users").child(userId!).child(fileName)
        
        return try await withCheckedThrowingContinuation{ continuation in
            picRef.putData(data, metadata: nil) { (metadata, error) in
                if let error = error {
                    continuation.resume(throwing : error)
                }
                continuation.resume(returning: fileName)
            }
        }
    }
}
