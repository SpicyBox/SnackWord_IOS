//
//  SignUpViewController.swift
//  SnackWord
//
//  Created by 이정찬 on 2023/01/27.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var idTxtFeild: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var passwordCheckTxtField: UITextField!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var nameTxtField: UITextField!
    
    func sign(email : String , password: String){
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            guard self != nil else { return }
        }
    }
    
    func userInfoUpdate(ID : String , name: String){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
