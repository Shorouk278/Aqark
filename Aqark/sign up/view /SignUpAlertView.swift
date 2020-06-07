//
//  SignUpAlertView.swift
//  Aqark
//
//  Created by Mahmoud Fouad on 5/19/20.
//  Copyright © 2020 ITI. All rights reserved.
//

import UIKit

//MARK: - ALertView
extension SignUpView{
    func showAlert(with message:String){
        let alert:UIAlertController = UIAlertController(title: "Sign Up".localize, message:message , preferredStyle: .alert)
        let ok:UIAlertAction = UIAlertAction(title: "Ok".localize, style: .default) { (UIAlertAction) in
            alert.dismiss(animated: true)
        }
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
}
