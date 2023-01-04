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
                print("로그인 성공")
            } else {
                print("로그인 실패")
                print(error.debugDescription)
            }
        }
    }
    
    func autoLogin(){
        if Auth.auth().currentUser != nil { //자동 로그인
            guard let nextVC = self.storyboard?.instantiateViewController(identifier: "mainTabBarController") else {return}
            self.navigationController?.pushViewController(nextVC, animated: true)
        } else {
            print("로그인 정보 없음")
        }
    }
    
    override func viewDidLoad() {
        FirebaseApp.configure()
        super.viewDidLoad()
        autoLogin()
    }
    
    @IBAction func pressLoginBtn(_ sender: UIButton) {
        login(email: idTxtField.text!, password: passwordTxtField.text!)
        if Auth.auth().currentUser != nil {
            guard let nextVC = self.storyboard?.instantiateViewController(identifier: "mainTabBarController") else {return}
            self.navigationController?.pushViewController(nextVC, animated: true)
        } else {
            print("로그인 정보 없음")
        }
    }
}


