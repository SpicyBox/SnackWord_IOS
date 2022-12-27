//
//  loginViewController.swift
//  SnackWord
//
//  Created by 이정찬 on 2022/12/21.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class loginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var idTxtField: UITextField!
    
    func login(email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password) {
            [weak self] authResult, error in
            guard let strongSelf = self else { return }
        }
    }
    
    override func viewDidLoad() {
        FirebaseApp.configure()
        super.viewDidLoad()
    
    }
    
}


