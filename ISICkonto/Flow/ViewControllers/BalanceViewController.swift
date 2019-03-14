//
//  BalanceViewController.swift
//  ISICkonto
//
//  Created by Vendula Švastalová on 14/02/2019.
//  Copyright © 2019 Vendula Švastalová. All rights reserved.
//

import Foundation
import UIKit
import SVProgressHUD

class BalanceViewController : UIViewController {
    
    private var balanceLabel: UILabel!
    private var textLabel: UILabel!
    private var refreshButton: UIButton!
    private var logOutButton: UIButton!
    private var buttonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        createConstraints()
    }
  
    func setupUI() {
        self.view.backgroundColor = UIColor(red: 93/255, green: 149/255, blue: 170/255, alpha: 1)
        
        balanceLabel = UILabel()
        balanceLabel.textAlignment = .center
        balanceLabel.font = UIFont(name: "Cabin-Bold", size: 85)!
        balanceLabel.textColor = UIColor.white
        
        textLabel = UILabel()
        textLabel.textAlignment = .center
        textLabel.font = UIFont(name: "Cabin-Regular", size: 25)!
        textLabel.textColor = UIColor(red: 182/255, green: 220/255, blue: 252/255, alpha: 1)
        textLabel.text = "Your balance is".localized
        
        refreshButton = UIButton()
        refreshButton.setImage(UIImage(named: "reloadIcon"), for: .normal)
        
        logOutButton = UIButton()
        logOutButton.setImage(UIImage(named: "accountIcon"), for: .normal)
        
        buttonView = UIView()
        
        view.addSubview(balanceLabel)
        view.addSubview(textLabel)
        buttonView.addSubview(refreshButton)
        buttonView.addSubview(logOutButton)
        view.addSubview(buttonView)
        
    }
    
    func createConstraints() {
        textLabel.snp.makeConstraints { make in
            make.bottom.equalTo(balanceLabel.snp.top).offset(-10)
            make.centerX.equalTo(balanceLabel.snp.centerX)
        }
        
        balanceLabel.snp.makeConstraints { make in
            make.center.equalTo(view.snp.center)
            make.left.equalTo(10)
            make.right.equalTo(-10)
        }
        
        buttonView.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(balanceLabel.snp.bottom).offset(20)
        }
        
        refreshButton.snp.makeConstraints { make in
            make.right.top.bottom.equalTo(buttonView).offset(-10)
            make.height.width.equalTo(50)
            make.left.equalTo(logOutButton.snp.right).offset(50)
        }
        
        logOutButton.snp.makeConstraints { make in
            make.left.top.bottom.equalTo(buttonView).offset(-10)
            make.width.height.equalTo(50)
        }
        
        
    }
}