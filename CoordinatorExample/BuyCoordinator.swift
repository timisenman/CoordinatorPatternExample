//
//  BuyCoordinator.swift
//  CoordinatorExample
//
//  Created by Tim Isenman on 5/30/19.
//  Copyright © 2019 Timothy Isenman. All rights reserved.
//

import UIKit

class BuyCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    weak var parentCoordinator: MainCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
//    func didFinishBuying() {
//        parentCoordinator?.childDidFinish(self)
//    }
}
