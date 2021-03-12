//
//  API.swift
//  RxSwiftDemo
//
//  Created by taozongqiang on 2021/3/12.
//

import Foundation

enum HeWeatherServerSecret: String {
    case publicid = "HE1603091654131102"
    case key = "4a886eb6ffba431f85b9cd2176f3acb7"
}

enum HeWeatherServerURL: String {
    case base = "https://geoapi.qweather.com/v2/"
    case lookupCity = "city/lookup"
    case topCity = "city/top"
}
