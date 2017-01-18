//
//  UIButton+Extension.swift
//  FetchImageDemo
//
//  Created by KingCQ on 2017/1/17.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

extension Fetch where Base: UIButton {
    
    func setWebImage(url: URL) {
        FetchImage.default.request(url: url) { data in
            DispatchQueue.main.async {
                let image = UIImage(data: data!)
                self.base.setImage(image, for: .normal)
            }
        }
    }
}

