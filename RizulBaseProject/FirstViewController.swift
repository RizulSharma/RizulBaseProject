//
//  FirstViewController.swift
//  RizulBaseProject
//
//  Created by Rizul Sharma on 20/11/20.
//

import LBTATools
class FirstViewController: UIViewController {
    
    let button = UIButton(title: "Show popup", titleColor: .white, font: UIFont.boldSystemFont(ofSize: 16), backgroundColor: .orange)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemIndigo
        self.button.layer.cornerRadius = 10
        self.button.clipsToBounds = true
        self.button.addTarget(self, action: #selector(self.showPopUpPressed), for: .touchUpInside)
        self.view.addSubview(button)
        self.button.centerInSuperview(size: .init(width: 150, height: 40))
        
    }

    @objc fileprivate func showPopUpPressed() {
        CustomToast.show(message: "An Awesome Popup  build  by Rizul!", backGroundColor: .magenta, position: .top, textColor: .yellow, controller: self)
    }
}
