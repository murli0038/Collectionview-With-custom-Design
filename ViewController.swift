//
//  ViewController.swift
//  CollectionViewWithCustomDesign
//
//  Created by Nikunj Prajapati on 16/12/19.
//  Copyright © 2019 Nikunj Prajapati. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate
{
    @IBOutlet weak var myCollectionView: UICollectionView!
    var arr = [["Image":#imageLiteral(resourceName: "card14"),"Name":"Card 1"],
               ["Image":#imageLiteral(resourceName: "card2"),"Name":"Card 2"],
               ["Image":#imageLiteral(resourceName: "card3"),"Name":"Card 3"],
               ["Image":#imageLiteral(resourceName: "card4"),"Name":"Card 4"],
               ["Image":#imageLiteral(resourceName: "card5"),"Name":"Card 5"],
               ["Image":#imageLiteral(resourceName: "card6"),"Name":"Card 6"],
               ["Image":#imageLiteral(resourceName: "card7"),"Name":"Card 7"],
               ["Image":#imageLiteral(resourceName: "card8"),"Name":"Card 8"],
               ["Image":#imageLiteral(resourceName: "card9"),"Name":"Card 9"],
               ["Image":#imageLiteral(resourceName: "card10"),"Name":"Card 10"],
               ["Image":#imageLiteral(resourceName: "card11"),"Name":"Card 11"],
               ["Image":#imageLiteral(resourceName: "card12"),"Name":"Card 12"],
               ["Image":#imageLiteral(resourceName: "card13"),"Name":"Card 13"],
               ["Image":#imageLiteral(resourceName: "card14"),"Name":"Card 1"],
               ["Image":#imageLiteral(resourceName: "card2"),"Name":"Card 2"],
               ["Image":#imageLiteral(resourceName: "card3"),"Name":"Card 3"],
               ["Image":#imageLiteral(resourceName: "card4"),"Name":"Card 4"],
               ["Image":#imageLiteral(resourceName: "card5"),"Name":"Card 5"],
               ["Image":#imageLiteral(resourceName: "card6"),"Name":"Card 6"],
               ["Image":#imageLiteral(resourceName: "card7"),"Name":"Card 7"],
               ["Image":#imageLiteral(resourceName: "card8"),"Name":"Card 8"],
               ["Image":#imageLiteral(resourceName: "card9"),"Name":"Card 9"],
               ["Image":#imageLiteral(resourceName: "card10"),"Name":"Card 10"],
               ["Image":#imageLiteral(resourceName: "card11"),"Name":"Card 11"],
               ["Image":#imageLiteral(resourceName: "card12"),"Name":"Card 12"],
               ["Image":#imageLiteral(resourceName: "card13"),"Name":"Card 13"],
    ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! MyCollectionViewCell
        
        cell.CardImage.image = arr[indexPath.row]["Image"] as? UIImage
        cell.CardImageName.text = arr[indexPath.row]["Name"] as? String
//        cell.contentView.layer.cornerRadius = 20
//        cell.contentView.layer.borderColor = UIColor.systemYellow.withAlphaComponent(0.5).cgColor
//        cell.contentView.layer.borderWidth = 1
        
        cell.contentView.layer.cornerRadius = 5.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.darkGray.cgColor
               cell.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
               cell.layer.shadowRadius = 5.0
               cell.layer.shadowOpacity = 100.0
               cell.layer.masksToBounds = false
               cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let itemSize = UIScreen.main.bounds.width/3 - 3
//        let layout = UICollectionViewFlowLayout()
//
//        layout.sectionInset = UIEdgeInsets(top: 20,left: 0,bottom: 10,right: 0)
//        layout.itemSize = CGSize(width: itemSize, height: itemSize)
//        layout.minimumInteritemSpacing = 2
//        layout.minimumLineSpacing = 2
//
        //myCollectionView.collectionViewLayout = layout
        // Do any additional setup after loading the view.
    }


}

