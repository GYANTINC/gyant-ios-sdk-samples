//
//  ViewController.swift
//  SDKSampleSwift
//
//  Created by Vitor Magalhães on 05/07/2019.
//  Copyright © 2019 GYANT.com, Inc. All rights reserved.
//

import UIKit
import GyantChatSDK

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(type:UIButton.ButtonType.custom)
        button.addTarget(self, action: #selector(handleButtonAction), for: .touchUpInside)
        button.setTitle("Talk to Gyant", for: UIControl.State.normal)
        button.frame = CGRect(x: 80.0, y: 210.0, width: 160.0, height: 40.0)
        button.backgroundColor = UIColor.blue
        self.view.addSubview(button)
    }
    
    @objc func handleButtonAction() {
        let chatVC = GyantChat.createChatViewController()!
        self.present(chatVC, animated: true, completion: nil)
    }
}

