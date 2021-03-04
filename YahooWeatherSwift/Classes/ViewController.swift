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
        
        navigationItem.title = "Yahoo"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: NSLocalizedString("button_cancel", comment: ""), style: .plain, target: self, action: nil)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: NSLocalizedString("button_done", comment: ""), style: .plain, target: self, action: nil)
    }


}

