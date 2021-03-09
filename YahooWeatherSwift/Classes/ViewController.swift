//
//  ViewController.swift
//  YahooWeatherSwift
//
//  Created by taozongqiang on 2021/3/1.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationItem.title = "Yahoo"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: NSLocalizedString("button_cancel", bundle: .main, comment: ""), style: .plain, target: self, action: nil)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: NSLocalizedString("button_done", bundle: .main, comment: ""), style: .plain, target: self, action: nil)
        view.backgroundColor = .white
    }
}
