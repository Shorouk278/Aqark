//
//  extensionSelectAmenities.swift
//  Aqark
//
//  Created by AhmedSaeed on 5/27/20.
//  Copyright © 2020 ITI. All rights reserved.
//

import Foundation
import UIKit


//MARK: - func select Amenities value when you check boxs

extension AddAdvertisementViewController{
    
    
    @IBAction func selectAmenities(_ sender: UIButton) {
        
        if let myButtonImage = sender.currentImage, let buttonAppuyerImage = UIImage(named: "advertisement_uncheck.png"), myButtonImage.pngData() == buttonAppuyerImage.pngData()
        {
            sender.setImage(UIImage(named: "advertisement_check"), for: .normal)
            selectAmenitiesDic[sender.tag] = selectAmenitiesValue(tagNumber: sender.tag)
        }else{
            sender.setImage(UIImage(named: "advertisement_uncheck"), for: .normal)
            selectAmenitiesDic.removeValue(forKey: sender.tag)
        }
    }
    
    func selectAmenitiesValue(tagNumber : Int)-> String{
        var value:String = ""
        switch tagNumber {
        case 0:
            value = "Furnished"
        case 1:
            value = "Shared Spa"
        case 2:
            value = "Central A/C"
        case 3:
            value = "Maids Room"
        case 4:
            value = "Security"
        case 5:
            value = "Kitchen Appliances"
        case 6:
            value = "Networked"
        case 7:
            value = "Covered Parking"
        case 8:
            value = "Pets Allowed"
        case 9:
            value = "Barbecue Area"
        case 10:
            value = "Balcony"
        case 11:
            value = "Walk-in Closet"
        case 12:
            value = "Study"
        case 13:
            value = "Private garden"
        case 14:
            value = "Children's Play Area"
        default:
            print("switch problem")
        }
        return value
    }
    
}
