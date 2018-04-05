//
//  PopVC.swift
//  pixel-city
//
//  Created by Matthew Byrne on 4/5/18.
//  Copyright © 2018 Matthew Byrne. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    // Outlets
    @IBOutlet weak var popImageView: UIImageView!
    
    
    // Variables
    var passedImage: UIImage!
    
    
    // Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()
    }

    // Actions
    
    
    
    // Functions
    func initData(forImage image: UIImage) {
        self.passedImage = image
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }

    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }

}
