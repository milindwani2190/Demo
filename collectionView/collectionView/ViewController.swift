//
//  ViewController.swift
//  collectionView
//
//  Created by minal borole on 09/06/21.
//

import UIKit

class ViewController: UIViewController {
    var imageArray: [UIImage] = [#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "cake"),#imageLiteral(resourceName: "boy"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "payment"),#imageLiteral(resourceName: "vec")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! imageCollectionViewCell
        cell.myImageView.image = imageArray[indexPath.row]
        return cell
    }
    
    
}
