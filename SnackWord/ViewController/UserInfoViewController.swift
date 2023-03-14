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

class CalendarVC: UIViewController {

    @IBOutlet weak var calendarOrigin: FSCalendar!{
            didSet{
                calendarOrigin.delegate = self
            }
        }
    @IBOutlet weak var calendarHeight: NSLayoutConstraint!
}

extension CalendarVC : FSCalendarDelegate {
    
    // Calendar 주간, 월간 원활한 크기 변화를 위해
    func calendar(_ calendar: FSCalendar, boundingRectWillChange bounds: CGRect, animated: Bool){
        calendarHeight.constant = bounds.height
        self.view.layoutIfNeeded ()
    }
}

