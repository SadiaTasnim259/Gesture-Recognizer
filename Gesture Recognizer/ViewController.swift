//
//  ViewController.swift
//  Gesture Recognizer
//
//  Created by Sadia on 25/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foodImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //foodImageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        foodImageView.addGestureRecognizer(gestureRecognizer)
    }
  
    @objc func changePic (){
        if foodImageView.image == UIImage(named: "food1"){
            foodImageView.image = UIImage(named: "food2")
        } else {
            foodImageView.image = UIImage(named: "food1")
        }
    }

}

