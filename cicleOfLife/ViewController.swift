//
//  ViewController.swift
//  cicleOfLife
//
//  Created by Danilo Requena on 11/09/19.
//  Copyright © 2019 Danilo Requena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func callXib(_ sender: UIButton) {
        let xib = UIViewController.init(nibName: "View", bundle: nil)
        self.present(xib, animated: true, completion: nil)
//
//        let xib = (Bundle.main.loadNibNamed("View", owner: self, options: nil)?.first as? XibUIView)!
//        self.view.addSubview(xib)
    }
    

}

