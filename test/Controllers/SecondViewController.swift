//
//  SecondViewController.swift
//  test
//
//  Created by mac3 on 10.12.2020.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupVC()
    }
    
    //MARK: - private funcs
    
    private func setupVC() {
        view.backgroundColor = UIColor.systemPink
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.left"), style: .plain, target: self, action: #selector(handleCancel))
        navigationItem.leftBarButtonItem?.tintColor = UIColor.black
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.right"), style: .plain, target: self, action: #selector(handleNext))
        navigationItem.rightBarButtonItem?.tintColor = UIColor.black
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    //MARK: - selectors
    
    @objc func handleCancel() {
        tabBarController?.selectedIndex = 0
    }
    @objc func handleNext() {
        tabBarController?.selectedIndex = 2
    }
}
