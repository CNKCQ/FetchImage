//
//  FetchImage.swift
//  FetchImageDemo
//
//  Created by KingCQ on 2017/1/17.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

class FetchImage {
    
    static let `default` = FetchImage()
    
    func request(url: URL, completed: @escaping (Data?) -> ()) {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            completed(data)
        }
        task.resume()
    }
    
}

class Fetch<Base> {
    let base: Base
    
    init(_ base: Base) {
        self.base = base
    }
}

protocol FetchCompatible {
    associatedtype Compatible
    var fi: Compatible { get }
}

extension FetchCompatible {
    var fi: Fetch<Self> {
        get {
            return Fetch(self)
        }
    }
}

extension UIImageView: FetchCompatible {}
extension UIButton: FetchCompatible {}


