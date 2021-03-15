//
//  AddCityViewController.swift
//  YahooWeatherSwift
//
//  Created by taozongqiang on 2021/3/15.
//

import UIKit

class AddCityViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = LocalizedString("add_location_title")
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: UIView())
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: LocalizedString("button_cancel"), style: .plain, target: self, action: #selector(popVC))
        view.backgroundColor = .init(red: 0.39, green: 0.45, blue: 0.4, alpha: 0)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }

    @objc
    func popVC() {
        self.navigationController?.popAnimationWithPresent()
    }
}
