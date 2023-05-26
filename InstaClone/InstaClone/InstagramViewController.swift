//
//  personCollectionViewController.swift
//  InstaClone
//
//  Created by Shilpee Gupta on 18/05/23.
//

import UIKit

class InstaViewController: UIViewController {
    
    @IBOutlet weak var personcollectionView: UICollectionView!
    @IBOutlet weak var tableFeedView: UITableView!
    
    var persons: [Person] = []
    
    var assetNames = [
        "chris-e_result",
        "chris-h_result",
        "jeremy_result",
        "mark_result",
        "robert_result",
        "scarlett_result"
    ]
    var feeds = [
        feed(username: "domino", profilePic: UIImage(named: "chris-e_result"), image: UIImage(named: "post1")),
        feed(username: "shizuka", profilePic: UIImage(named: "chris-h_result"), image: UIImage(named: "post2")),
        feed(username: "lisa", profilePic: UIImage(named: "jeremy_result"), image: UIImage(named: "post3")),
        feed(username: "captain", profilePic: UIImage(named: "mark_result"), image: UIImage(named: "post4")),
        feed(username: "VeroModa", profilePic: UIImage(named: "robert_result"), image: UIImage(named: "post5")),
        feed(username: "AJIO", profilePic: UIImage(named: "scarlett_result"), image: UIImage(named: "post6"))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableFeedView.delegate = self
        tableFeedView.dataSource = self
        personcollectionView.delegate = self
        personcollectionView.dataSource = self
        
        
        let FeedCellNib = UINib(nibName: "feedCell", bundle: nil)
        tableFeedView.register(FeedCellNib, forCellReuseIdentifier: "FeedCell")
        
        
    }


}

extension InstaViewController: UICollectionViewDelegate,  UITableViewDelegate { }

extension InstaViewController: UICollectionViewDataSource, UITableViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return assetNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = personcollectionView.dequeueReusableCell(withReuseIdentifier: "personCell", for: indexPath) as! personCollectionViewCell
        
        cell.personView.image = UIImage(named: assetNames[indexPath.row])
        
        //to make cells circular
        cell.personView.layer.cornerRadius = 50
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feeds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let feedCell = tableView.dequeueReusableCell(withIdentifier: "FeedCell") as! feedCell
        
        feedCell.postView.image = nil
        
        feedCell.profileImage.image = feeds[indexPath.row].profilePic
        feedCell.username.text = feeds[indexPath.row].username
        feedCell.userID.text = feeds[indexPath.row].username.lowercased()
        feedCell.postView.image = feeds[indexPath.row].image
        
        
        return feedCell
    }
    
    
}
