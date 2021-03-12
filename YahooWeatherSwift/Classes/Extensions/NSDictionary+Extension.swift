//
//  NSDictionary+EXtension.swift
//  RxSwiftDemo
//
//  Created by taozongqiang on 2021/3/12.
//

import Foundation

extension NSDictionary {
    func toHttpMethodGETParams(_ needSorted: Bool = false) -> String {
        guard let allKeys = self.allKeys as? [String] else { preconditionFailure("no keys") }
        let sortedKeys = allKeys.sorted(by: { (s1: String, s2: String) -> Bool in
            return s1 < s2
        })

        var string = String()
        for key in needSorted ? sortedKeys : allKeys {
            guard let value = self.value(forKey: key) as? String else {
                continue
            }

            string.append("\(key)=\(value)&")
        }

        let params = "\(string.prefix(string.count - 1))"
        return params
    }

    func digitalSignature() -> String {
        let string = self.toHttpMethodGETParams(true)
        let key = string + HeWeatherServerSecret.key.rawValue
        let sign = key.md5()

        return sign
    }

    func toData() -> Data? {
        guard let jsonData = try? JSONSerialization.data(withJSONObject: self, options: []) else {
            print("Dictionary to data error")
            return nil
        }
        return jsonData
    }

    func toJOSNString() -> String? {
        guard let data = self.toData() else {
            print("Dictionary to JOSNString error")
            return nil
        }
        return String(data: data, encoding: .utf8)
    }
}
