//
//  ViewController.swift
//  FetchImageDemo
//
//  Created by KingCQ on 2017/1/17.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let imageVeiw = UIImageView()
        imageVeiw.frame = view.bounds
        
        view.addSubview(imageVeiw)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

