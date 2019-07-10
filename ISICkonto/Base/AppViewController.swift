//
//  AppViewController.swift
//  ISICkonto
//
//  Created by Vendula Švastalová on 21/03/2019.
//  Copyright © 2019 Vendula Švastalová. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

class AppViewController<VM: AppViewModel, V: UIView>: UIViewController {
    var vm: VM!
    var disposeBag = DisposeBag()
    
    init(vm: VM) {
        self.vm = vm
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("binding")
        bindToViewModel(vm: vm)
    }
    
    override func loadView() {
        super.loadView()
        setView()
    }
    
    
    func setView() {
        
    }
    
    private func bindToViewModel(vm: VM) {
        setupOutputBindings(to: vm)
        setupInputBindings(from: vm)
    }
    
    func setupInputBindings(from vm: VM) {
        
    }
    
    func setupOutputBindings(to vm: VM) {
        
    }
}
