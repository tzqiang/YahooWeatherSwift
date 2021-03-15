//
//  I18nTool.swift
//  YahooWeatherSwift
//
//  Created by taozongqiang on 2021/3/15.
//

import Foundation

public func LocalizedString(_ key: String) -> String {
    return NSLocalizedString(key, tableName: nil, bundle: .main, value: "", comment: "")
}
