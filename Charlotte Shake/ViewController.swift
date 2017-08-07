//
//  ViewController.swift
//  Charlotte Shake
//
//  Created by Vladislav Fedotovskiy on 12.06.16.
//  Copyright © 2016 Vladislav Fedotovskiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photo: UIImageView!
    
    
    var pics = ["1","2","3","4","5","6","7","8","9","10","11","12"]
    
    
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event!.subtype == UIEventSubtype.motionShake {
            
            let randomNumber = Int(arc4random_uniform(UInt32(pics.count)))
            
            let fileLocation = Bundle.main.path(forResource: pics[randomNumber], ofType: "jpg")
            
            photo.image = UIImage(contentsOfFile: fileLocation!)
            
        }
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomNumber = Int(arc4random_uniform(UInt32(pics.count)))
        
        let fileLocation = Bundle.main.path(forResource: pics[randomNumber], ofType: "jpg")
        
        photo.image = UIImage(contentsOfFile: fileLocation!)
        
        
    }


}

