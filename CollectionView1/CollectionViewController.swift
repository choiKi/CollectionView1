//
//  CollectionViewController.swift
//  CollectionView1
//
//  Created by 최기훈 on 2022/01/25.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
   
    

    @IBOutlet weak var collectionView: UICollectionView!

    
    let arrayList: [String] = ["사과","바나나","딸기","메론","오렌지"]
    let imageList: [String] = ["사과","바나나","딸기","메론","오렌지"]
    let identifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        // cell 별 최소 간격
        flowLayout.minimumInteritemSpacing = 10
        // line 별 최소 간격
        flowLayout.minimumLineSpacing = 10
        // cell의 크기.
        flowLayout.itemSize = CGSize(width: 200, height: 200)
        
        //    flowLayout.estimatedItemSize = CGSize(width: 100, height: 100)
        
        collectionView.collectionViewLayout = flowLayout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! CollectionViewCell

        cell.textLabel.text = arrayList[indexPath.item]
        cell.imageView.image = UIImage(named: imageList[indexPath.item])
        
        return cell
    }



}
