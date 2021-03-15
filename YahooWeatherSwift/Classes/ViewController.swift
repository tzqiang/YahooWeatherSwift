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
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: LocalizedString("button_cancel"), style: .plain, target: self, action: nil)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: LocalizedString("button_done"), style: .plain, target: self, action: #selector(self.addCity))
        view.backgroundColor = .gray

        self.testNetwork()
    }

    func testNetwork() {
        let t = String(format: "%f", NSDate().timeIntervalSince1970)
        let params: NSMutableDictionary = ["location" : "beij", "publicid" : HeWeatherServerSecret.publicid.rawValue, "t" : t]
        let sign = params.digitalSignature()
        params.setValue(sign, forKey: "sign")
        let paramsString = params.toHttpMethodGETParams()
        let url = URL(string: HeWeatherServerURL.base.rawValue + HeWeatherServerURL.lookupCity.rawValue + "?\(paramsString)")
        guard let requestUrl = url else { preconditionFailure("URL is nil") }
        let request = URLRequest(url: requestUrl)

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if error != nil {
                print(error ?? "has error")
                return
            }
            print(error ?? "no error")
            guard let data = data else {
                print("has no data")
                return
            }
            print(data)

            guard let response = response as? HTTPURLResponse, (200...209).contains(response.statusCode) else {
                print(error ?? "response error")
                return
            }
            print(response)

            guard let mime = response.mimeType, mime == "application/json" else {
                print("Wrong MIME type!")
                return
            }

            let json = data.toJSONObject()
            print(json ?? "json is nil")

            if let dataString = String(data: data, encoding: .utf8) {
                print("Response data string:\n \(dataString)")
            }
        }
        task.resume()
    }

    @objc
    func addCity() {
        let vc = AddCityViewController()
        self.navigationController?.pushAnimationWithPresent(vc)
    }
}
