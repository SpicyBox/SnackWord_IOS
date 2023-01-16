//
//  QuestionViewController.swift
//  SnackWord
//
//  Created by 이정찬 on 2022/12/21.
//

import UIKit

class QuestionViewController: UIViewController {

    var dairyQuestList = ["1", "2", "3"]
    
    @IBOutlet weak var dairyQuestTabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dairyQuestTabelView.dataSource = self
    }
}

extension QuestionViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dairyQuestList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dairyQuestTabelView.dequeueReusableCell(withIdentifier: "dariyQuestCell") as! dariyQuestTVC
        let dairyQuest = dairyQuestList[indexPath.row]
        
        cell.dairyQuestLabel.text = dairyQuest
        cell.dairyQuestImgView.image = UIImage(named: "Korea")
        
        return cell
    }
}
