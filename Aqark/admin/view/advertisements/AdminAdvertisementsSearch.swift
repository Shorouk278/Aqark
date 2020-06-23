//
//  AdminAdvertisementsSearch.swift
//  Aqark
//
//  Created by ZeyadEl3ssal on 6/11/20.
//  Copyright © 2020 ITI. All rights reserved.
//

import Foundation
import UIKit

extension AdminAdvertisementsViewController:UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        adminAdvertisementViewModel.getFilteredAdvertisements(searchText: searchText, type: advertisementsSegment.selectedIndex)
        advertisementsCollectionView.reloadData()
        if(self.adminAdvertisementViewModel.adminAdvertisementsViewList.isEmpty){
            self.setLabelForZeroCount(search:true)
        }else{
            noLabel.isHidden = true
        }
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
}

