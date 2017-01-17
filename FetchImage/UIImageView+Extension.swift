//
//  UIImageView+Extension.swift
//  FetchImageDemo
//
//  Created by KingCQ on 2017/1/17.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func setImage(with url: URL) {
        FetchImage.default.request(url: url) { data in
            self.image = UIImage(data: data!)
        }
    }
}
