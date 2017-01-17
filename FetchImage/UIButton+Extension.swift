//
//  UIButton+Extension.swift
//  FetchImageDemo
//
//  Created by KingCQ on 2017/1/17.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

extension UIButton {
    
    func setWebImage(url: URL) {
        FetchImage.default.request(url: url) { data in
            DispatchQueue.main.async {
                self.imageView?.image = UIImage(data: data!)
            }
        }
    }
}
