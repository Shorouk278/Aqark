//
//  ProfileUI.swift
//  Aqark
//
//  Created by Mahmoud Fouad on 5/19/20.
//  Copyright © 2020 ITI. All rights reserved.
//

import UIKit
//MARK: - Profile Data
extension ProfileViewController{
    func setupView()
    {
        hideAllElements(status: true)
        rate.settings.updateOnTouch = false
        
    }
     func hideAllElements(status:Bool)
    {
        profilePicture.isHidden = status
        editProfile.isHidden = status
        rate.isHidden = status
        setupOptionalViews(hide: status)
    }
    func setupOptionalViews(hide status:Bool)
    {
        containerStack.isHidden = status
        
    }
    func setUpNoConnectionView()
    {
        hideAllElements(status: true)
        noAdvertisementsLabel.isHidden = false
        noAdvertisementsLabel.text = "Internet Connection Not Available"
        
    }
    
}


