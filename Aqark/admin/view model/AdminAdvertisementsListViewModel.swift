//
//  AdminAdvertisementsListViewModel.swift
//  Aqark
//
//  Created by ZeyadEl3ssal on 5/23/20.
//  Copyright © 2020 ITI. All rights reserved.
//

import Foundation
class AdminAdvertisementsListViewModel{
    
    var adminAdvertisementsViewList : [AdminAdvertisementViewModel] = [AdminAdvertisementViewModel]()
    let dataAccess : AdminDataAccessLayer!
    
    init(dataAccess:AdminDataAccessLayer) {
        self.dataAccess = dataAccess
    }
    
    func populateAdvertisements(completionForPopulateAdvertisements:@escaping() -> Void){
        dataAccess.getAdvertisements { (advertisementsData) in
            for ad in advertisementsData{
                print(ad.advertisementCountry)
            }
        }
        
    }
}
