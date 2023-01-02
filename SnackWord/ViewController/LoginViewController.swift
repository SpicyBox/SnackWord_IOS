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

    @IBOutlet weak var idTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    
    func login(email: String, password: String){//파이어 베이스
        Auth.auth().signIn(withEmail: email, password: password) {
            [weak self] authResult, error in
            if authResult != nil {
                guard let nextVC = self?.storyboard?.instantiateViewController(identifier: "mainTabBarController") else {return}
                self?.navigationController?.pushViewController(nextVC, animated: true)
            } else {
                print("로그인 실패")
                print(error.debugDescription)
            }
        }
    }
    
    override func viewDidLoad() {
        FirebaseApp.configure()
        super.viewDidLoad()
    
    }
    
    @IBAction func pressLoginBtn(_ sender: UIButton) {
        login(email: idTxtField.text!, password: passwordTxtField.text!)
    }
}


