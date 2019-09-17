//
//  AlertView.swift
//  cicleOfLife
//
//  Created by Danilo Requena on 17/09/19.
//  Copyright © 2019 Danilo Requena. All rights reserved.
//

import UIKit
import Foundation

class AlertView: UIView {

    static let instance = AlertView()
    
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var btnClose: UIButton!
    @IBOutlet weak var alertViewMessage: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("AlertView", owner: self, options: nil)
        commonInit()
        addSubview(mainView)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func commonInit() {
        mainView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        mainView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    func showAlert(title: String, message: String) {
        self.title.text = title
        self.message.text = message
        
        UIApplication.shared.keyWindow?.addSubview(mainView)
    }
    
    @IBAction func closeView(_ sender: Any) {
        mainView.removeFromSuperview()
    }
    

}


