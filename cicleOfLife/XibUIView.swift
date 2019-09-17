//
//  XibUIView.swift
//  cicleOfLife
//
//  Created by Danilo Requena on 12/09/19.
//  Copyright © 2019 Danilo Requena. All rights reserved.
//

import UIKit
import Foundation

class XibUIView: UIView {

    
    @IBOutlet var view: XibUIView!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var btnClose: UIButton!
    
    
    
    
    
    @IBAction func close(_ sender: UIButton) {
        view.remove
    }
    
}
