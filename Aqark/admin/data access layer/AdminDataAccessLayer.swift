//
//  AdminDataAccessLayer.swift
//  Aqark
//
//  Created by ZeyadEl3ssal on 5/16/20.
//  Copyright © 2020 ITI. All rights reserved.
//

import Foundation
import Firebase
class AdminDataAccessLayer{
    
    var ref = Database.database().reference()
    
    func getUsers(completionForGetUser : @escaping(_ usersData : [AdminUser]) -> Void){
        var users = [AdminUser]()
        let usersRef = ref.child("Users")
        usersRef.observe(.value) { (snapShot) in
            for child in snapShot.children.allObjects as! [DataSnapshot]{
                let userId = child.key
                let userDictionary = child.value as? [String : Any]
                let userName = userDictionary![UserKey.userName] as! String
                let userEmail = userDictionary![UserKey.userEmail] as! String
                let userPhone = userDictionary![UserKey.userPhone] as? String ?? "No Phone"
                let userCountry = userDictionary![UserKey.userCountry] as? String ?? "No Country"
                let userCompany = userDictionary![UserKey.userCompany] as? String ?? "No Company"
                let userRole = userDictionary![UserKey.userRole] as! String
                let userExperience = "4"
                let userRating = "4"
                let userImage = "https://cdn1.vectorstock.com/i/1000x1000/26/40/profile-placeholder-image-gray-silhouette-no-vector-22122640.jpg"
                let user = AdminUser(userId:userId, userName: userName, userEmail: userEmail, userPhone: userPhone, userCountry: userCountry, userCompany: userCompany, userRole: userRole, userRating: userRating, userExperience: userExperience, userImage: userImage)
                users.append(user)
            }
            completionForGetUser(users)
        }
    }
    
    
    
    //TODO: get advertisements data from firebase
}
