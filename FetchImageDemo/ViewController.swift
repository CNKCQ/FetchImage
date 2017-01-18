//
//  ViewController.swift
//  FetchImageDemo
//
//  Created by KingCQ on 2017/1/17.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imageVeiw = UIImageView()
    var button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        imageVeiw.backgroundColor = UIColor.lightGray
        imageVeiw.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: width, height: height / 2))
        let url = URL(string: "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png")!
        imageVeiw.fi.setWebImage(with: url)
        view.addSubview(imageVeiw)
        button.frame = CGRect(origin: CGPoint(x: 0,y: height / 2), size: CGSize(width: width, height: height / 2))
        button.backgroundColor = UIColor.green
        button.fi.setWebImage(url: url)
        view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

