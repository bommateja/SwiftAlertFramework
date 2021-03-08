//
//  ViewController.swift
//  ProjectSwiftAlertFramework
//
//  Created by apple on 08/03/21.
//

import UIKit
import SwiftAlertFramework

class ViewController: UIViewController {
    
    @IBOutlet weak var otpTxtFld: UITextField!
    
    let alert = MyNewFramework()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        otpTxtFld.textContentType = .oneTimeCode
        otpTxtFld.keyboardType = .numberPad
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        
        NotificationCenter.default.addObserver( self,selector:#selector(self.keyboardDidShow), name: UITextField.textDidChangeNotification, object: otpTxtFld)
        otpTxtFld.becomeFirstResponder()
        alert.testFunction()
    }
    
    @objc func keyboardDidShow(notifcation: NSNotification) {

         if otpTxtFld.text?.count == 4 {
            if otpTxtFld.text == "1234" {
                let vc = self.storyboard?.instantiateViewController(identifier: "VerifyViewController") as! VerifyViewController
                self.navigationController?.pushViewController(vc, animated: true)
            } else {

                alert.showAlert(viewController: self)
            }
         }
     }


}

