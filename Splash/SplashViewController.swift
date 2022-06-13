//
//  SplashViewController.swift
//  myRecipe
//
//  Created by 1 on 2022/06/13.
//

import UIKit

class SplashViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 5, delay: 0, options: .curveEaseInOut) {
            self.leadingConstraint.constant = -(self.imageView.frame.width - self.view.frame.width)
            //클로져 안에서는 셀프를 써줘야한다.
            self.view.layoutIfNeeded()  //먼지는 모르지만 애니메이션 이부분을 호출해줘야한다.
        }
        
    }
}
