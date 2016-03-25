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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onPan(sender: UIPanGestureRecognizer) {
        
        let translation = sender.translationInView(cardsView)
       
        if sender.state == UIGestureRecognizerState.Began{
            profileOriganalCenter = profileImage.center
        }else if sender.state == UIGestureRecognizerState.Changed{
            profileImage.center = CGPoint(x: profileOriganalCenter.x + translation.x, y: profileOriganalCenter.y)

        }else if sender.state == UIGestureRecognizerState.Ended{
            
        }
        
    }
    
}

