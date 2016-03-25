//
//  ViewController.swift
//  TindAppLab
//
//  Created by Dylan Smith on 3/24/16.
//  Copyright © 2016 com.heydylan. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {
    @IBOutlet var cardsView: UIView!
    @IBOutlet weak var draggableImageView: DraggableImageView!

    var profileOriganalCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        draggableImageView.image = UIImage(named: "ryan")
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    
}

