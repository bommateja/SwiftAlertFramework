//
//  MySwiftAlertFramework.swift
//  SwiftAlertFramework
//
//  Created by apple on 08/03/21.
//

import Foundation
import UIKit


public class MyNewFramework {
    
    public init() {}
  
    public func testFunction() {
        print("This is test function")
    }
    
    public func showAlert(viewController : UIViewController) {
        let alert = UIAlertController(title: "Alert", message: "Invalid OTP", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        viewController.present(alert, animated: true, completion: nil)
    }
    
}

