//
//  ProfileViewController.swift
//  Aqark
//
//  Created by Mahmoud Fouad on 5/16/20.
//  Copyright © 2020 ITI. All rights reserved.
//

import UIKit
//MARK: - Live Cycle and Properties
class ProfileViewController: UIViewController {
    
    @IBOutlet weak var containerHeight: NSLayoutConstraint!
    @IBOutlet weak var experienceValue: UILabel!
    @IBOutlet weak var containerStack: UIStackView!
    @IBOutlet  weak var phoneValue: UILabel!
    @IBOutlet  weak var editProfile: UIButton!
    @IBOutlet  weak var advertisementsCollection: UICollectionView!
    @IBOutlet  weak var companyName: UILabel!
    @IBOutlet  weak var addressText: UILabel!
    @IBOutlet  weak var username: UILabel!
    @IBOutlet  weak var countryName: UILabel!
    @IBOutlet  weak var profilePicture: UIImageView!
    let networkIndicator = UIActivityIndicatorView(style: .whiteLarge)
    let profileDataAccess:ProfileDataAccess = ProfileDataAccess()
    var listOfAdvertisements:[ProfileAdvertisementViewModel] = []{
        didSet{
            advertisementsCollection.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationProperties()
        setupView()
        setupCollection()
    }
    
    
}
