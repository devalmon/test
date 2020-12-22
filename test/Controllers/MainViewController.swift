//
//  MainViewController.swift
//  test
//
//  Created by mac3 on 15.12.2020.
//

import UIKit

class MainViewController: UIViewController {

    let mainTabBar = UITabBarController()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        
        setup()
        present()
    }
    required init?(coder: NSCoder) {
        fatalError("fatal error")
    }
}

extension MainViewController {
    func setup() {
        let vc = ViewController()
        let svc = SecondViewController()
        let tvc = ThirdViewController()
        vc.title = "Main"
        svc.title = "Second"
        tvc.title = "Third"
        
        let vcNavi = UINavigationController(rootViewController: vc)
        let svcNavi = UINavigationController(rootViewController: svc)
        let tvcNavi = UINavigationController(rootViewController: tvc)
        
        mainTabBar.viewControllers = [vcNavi, svcNavi, tvcNavi]
        mainTabBar.view.backgroundColor = UIColor.red
        mainTabBar.delegate = self
    }
    
    func present() {
        addChild(mainTabBar)
        view.addSubview(mainTabBar.view)
        didMove(toParent: self)
    }
}

extension MainViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return AnimatorFromLeft()
    }
}
