//
//  ViewController.swift
//  Animations
//
//  Created by Andrew Foster on 4/7/17.
//  Copyright © 2017 Andrii Halabuda. All rights reserved.
//

import UIKit
import Spring

class ViewController: UIViewController {

    @IBOutlet weak var animationView: UIView!
    @IBOutlet weak var loadingView: LoadingView!
    
    var currentCard: LoadingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.animationView.layer.cornerRadius = 20
        
        
        currentCard = createCardFromNib()
        self.view.addSubview(currentCard)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        

    }
    
    func createCardFromNib() -> LoadingView? {
        return Bundle.main.loadNibNamed("LoadingView", owner: self, options: nil)?[0] as? LoadingView
    }
    

}

