//
//  ViewController.swift
//  Scroll
//
//  Created by Julian Mino on 3/2/19.
//  Copyright © 2019 Julian Mino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        var images = [UIImageView]()
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = view.frame.midX + view.frame.width * CGFloat(x)
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: 0.0, y: view.frame.height / 2, width: 150, height: 150)
        }
    }


}

