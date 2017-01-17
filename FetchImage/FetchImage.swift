//
//  FetchImage.swift
//  FetchImageDemo
//
//  Created by KingCQ on 2017/1/17.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import Foundation

class FetchImage {
    
    static let `default` = FetchImage()
    
    func request(url: URL, completed: @escaping (Data?) -> ()) {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            completed(data)
        }
        task.resume()
    }
    
}

