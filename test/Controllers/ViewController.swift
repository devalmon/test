//
//  ViewController.swift
//  test
//
//  Created by mac3 on 10.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var rightButton = UIBarButtonItem()
    let fwdImage = UIImage(systemName: "arrow.forward")

    override func viewDidLoad() {
        super.viewDidLoad()
        setupVC()
        setupRightButton()
    }
    
    
    //MARK: - private funcs
    private func setupVC() {
        view.backgroundColor = UIColor.systemTeal
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    private func setupRightButton() {
        rightButton = UIBarButtonItem(image: fwdImage, style: .plain, target: self, action: #selector(handleNext))
        rightButton.tintColor = UIColor.black
        navigationItem.rightBarButtonItem = rightButton
    }
    
    //MARK: - selectors
    @objc func handleNext() {
        tabBarController?.selectedIndex = 1
    }


}
