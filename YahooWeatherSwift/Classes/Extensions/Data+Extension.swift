//
//  Data+Extension.swift
//  RxSwiftDemo
//
//  Created by taozongqiang on 2021/3/12.
//

import Foundation

extension Data {
    func toJSONObject() -> NSDictionary? {
        guard let jsonObject = try? JSONSerialization.jsonObject(with: self, options: []) as? NSDictionary else {
            print("Data to JSON error")
            return nil
        }
        return jsonObject
    }
}
