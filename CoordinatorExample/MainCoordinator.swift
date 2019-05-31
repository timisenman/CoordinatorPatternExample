//
//  MainCoordinator.swift
//  CoordinatorExample
//
//  Created by Tim Isenman on 5/30/19.
//  Copyright © 2019 Timothy Isenman. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator, Buying, AccountCreating {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buySubscription() {
        let vc = ViewController.instantiate()
        vc.buyAction = { [weak self] in
            self?.buySubscription()
        }
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccount() {
        let vc = ViewController.instantiate()
        vc.createAccountAction = { [weak self] in
            self?.createAccount()
        }
        navigationController.pushViewController(vc, animated: true)
    }
}
