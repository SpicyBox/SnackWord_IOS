//
//  RankViewController.swift
//  SnackWord
//
//  Created by 이정찬 on 2022/12/21.
//

import UIKit
import FirebaseCore
import FirebaseFirestore

class RankViewController: UIViewController {
    
    @IBOutlet weak var lifeTypeRank3ScoreLabel: UILabel!
    @IBOutlet weak var lifeTypeRank2ScoreLabel: UILabel!
    @IBOutlet weak var lifeTypeRank1ScoreLabel: UILabel!
    @IBOutlet weak var lifeTypeRank3NickNameLabel: UILabel!
    @IBOutlet weak var lifeTypeRank2NickNameLabel: UILabel!
    @IBOutlet weak var lifeTypeRank1NickNameLabel: UILabel!
    @IBOutlet weak var lifeTypeRank3ImgView: UIImageView!
    @IBOutlet weak var lifeTypeRank2ImgView: UIImageView!
    @IBOutlet weak var lifeTypeRank1ImgView: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        FirebaseApp.configure()
        getRankInfo()
    }
    
    func getRankInfo(){
        let db = Firestore.firestore()
        let docRef = db.collection("rank").document("journalType")
        
        // Force the SDK to fetch the document from the cache. Could also specify
        // FirestoreSource.server or FirestoreSource.default.
        docRef.getDocument(source: .cache) { (document, error) in
            if let document = document {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                print("Cached document data: \(dataDescription)")
            } else {
                print("Document does not exist in cache")
            }
        }
    }
}
