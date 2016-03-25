//
//  DraggableImageView.swift
//  TindAppLab
//
//  Created by Dylan Smith on 3/24/16.
//  Copyright © 2016 com.heydylan. All rights reserved.
//

import UIKit

class DraggableImageView: UIView {

    @IBOutlet var draggableImageView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    
    var profileOriganalCenter: CGPoint!
    var image: UIImage? {
        get { return profileImageView.image }
        set { profileImageView.image = newValue }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
        // standard initialization logic
        let nib = UINib(nibName: "DraggableImageView", bundle: nil)
        nib.instantiateWithOwner(self, options: nil)
        draggableImageView.frame = bounds
        addSubview(draggableImageView)
            
            // custom initialization logic
//        ...
    }
    @IBAction func onPan(sender: UIPanGestureRecognizer) {
        
        let translation = sender.translationInView(draggableImageView)
        
        if sender.state == UIGestureRecognizerState.Began{
            profileOriganalCenter = profileImageView.center
        }else if sender.state == UIGestureRecognizerState.Changed{
            profileImageView.center = CGPoint(x: profileOriganalCenter.x + translation.x, y: profileOriganalCenter.y)
            print("ch-ch-ch-changes")
        }else if sender.state == UIGestureRecognizerState.Ended{
            
        }
        
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
