//
//  CustomAnimator.swift
//  test
//
//  Created by mac3 on 17.12.2020.
//

import UIKit

let animationDuration: TimeInterval = 0.3

class CustomAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return animationDuration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let fromVC = transitionContext.viewController(forKey: .from),
              let toVC = transitionContext.viewController(forKey: .to) else { return }
        
        let finalFrame = transitionContext.finalFrame(for: toVC)
        
        toVC.view.alpha = 0.0
        toVC.view.transform = .init(scaleX: 1.5, y: 1.5)
        let containerView = transitionContext.containerView
        
        containerView.addSubview(toVC.view)
        
        UIView.animate(withDuration: animationDuration) {
            toVC.view.alpha = 1.0
            toVC.view.transform = .identity
        } completion: { (isFinished) in
            transitionContext.completeTransition(isFinished)
        }



    }
    
    
}
