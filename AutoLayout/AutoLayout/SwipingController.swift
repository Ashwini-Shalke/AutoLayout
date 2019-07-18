//
//  SwipingController.swift
//  AutoLayout
//
//  Created by Ashwini shalke on 09/03/19.
//  Copyright © 2019 Ashwini shalke. All rights reserved.
//

import UIKit

class SwipingController : UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    
//  let imageNames = ["bear_first","heart_second","leaf_third"]
//  let descriptionText = ["Join use today in our fun and games!", "Subscribe and get coupons on our daily events", "VIP members special services"]
    
    let pages = [
        Page(images: "bear_first", headerText: "Join use today in our fun and games!",bodyText : "Are you ready for loads and loads of fun? Don't wait any longer! We hope to see you in our stores soon."),
        Page(images: "heart_second", headerText: "Subscribe and get coupons on our daily events",bodyText : "Get notified of the savings immediately when we announce them on our website. Make sure to also give us any feedback you have."),
        Page(images: "leaf_third", headerText: "VIP members special services",bodyText : " ")
    ]
    
    
    
    override func viewDidLoad() {
        super .viewDidLoad()
        collectionView?.backgroundColor = .white
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView?.isPagingEnabled = true
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PageCell
//      cell.backgroundColor = indexPath.item % 2 == 0 ? .red : .green
        
//       let imageName = imageNames[indexPath.item]
//       cell.bearImage.image = UIImage(named: imageName)
//       cell.descriptionTextView.text = descriptionText[indexPath.item]
        
        let page = pages[indexPath.item]
        cell.page = page
//      cell.bearImage.image = UIImage(named: page.images)
//      cell.descriptionTextView.text = page.headerText
        return cell
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
        
    }

}
