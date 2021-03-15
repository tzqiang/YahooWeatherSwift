//
//  UINavigationController+Extension.swift
//  YahooWeatherSwift
//
//  Created by taozongqiang on 2021/3/15.
//

import UIKit

extension UINavigationController {
    func pushAnimationWithPresent(_ viewController: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = .moveIn
        transition.subtype = .fromTop
        self.view.layer.add(transition, forKey: kCATransition)
        self.pushViewController(viewController, animated: false)

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.4) {
            self.view.layer.removeAnimation(forKey: kCATransition)
        }
    }

    func popAnimationWithPresent() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = .reveal
        transition.subtype = .fromBottom
        self.view.layer.add(transition, forKey: kCATransition)
        self.popViewController(animated: false)

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.4) {
            self.view.layer.removeAnimation(forKey: kCATransition)
        }
    }
}
