//
//  Indicator.swift
//  Aqark
//
//  Created by Mahmoud Fouad on 6/1/20.
//  Copyright © 2020 ITI. All rights reserved.
//

import UIKit
fileprivate var indicatorView:UIView?
extension UIViewController{
    func showActivityIndicator() {
        
        indicatorView = UIView(frame: self.view.bounds)
        indicatorView?.backgroundColor = UIColor(white: 0, alpha: 0.5)
        let indicator = UIActivityIndicatorView(style: .whiteLarge)
        indicator.center = (indicatorView?.center)!
        indicator.color = UIColor(rgb: 0x1d3557)            //UIColor(rgb: 0xe63946)
        indicator.startAnimating()
        indicatorView?.addSubview(indicator)
        self.view.addSubview(indicatorView!)
        Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (time) in
            self.stopActivityIndicator()
        }
    }
    
    func stopActivityIndicator(){
        indicatorView?.removeFromSuperview()
        indicatorView = nil
    }
    
}