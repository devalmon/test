//
//  AnimatorFromLeft.swift
//  test
//
//  Created by mac3 on 18.12.2020.
//

import UIKit

let duration: TimeInterval = 0.7

class AnimatorFromLeft: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        duration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let toVC = transitionContext.viewController(forKey: .to) else { return }
        let bounds = UIScreen.main.bounds
        let finalFrame = transitionContext.finalFrame(for: toVC)
        toVC.view.layer.frame = CGRect(x: 0, y: 0, width: -bounds.width, height: bounds.height)
        transitionContext.containerView.addSubview(toVC.view)
        
        
        UIView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut) {
            toVC.view.alpha = 1.0
            toVC.view.layer.frame = finalFrame
        } completion: { (isFinished) in
            transitionContext.completeTransition(isFinished)
        }

    }
    

}
