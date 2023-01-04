//
//  UserInfoViewController.swift
//  SnackWord
//
//  Created by 이정찬 on 2023/01/03.
//

import UIKit
import FSCalendar

class UserInfoViewController: UIViewController {

    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userImg.layer.cornerRadius = userImg.frame.width / 2
        userImg.clipsToBounds = true
    
    }

}
