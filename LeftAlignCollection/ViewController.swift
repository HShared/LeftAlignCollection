//
//  ViewController.swift
//  LeftAlignCollection
//
//  Created by ATH on 2020/3/19.
//  Copyright © 2020 sco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var leftAlignSimpleView:LeftAlignSimpleView?
    override func viewDidLoad() {
        super.viewDidLoad()
        let screenSize = UIScreen.main.bounds.size
        leftAlignSimpleView = LeftAlignSimpleView(frame: CGRect(x:10,y:70,width: screenSize.width-20,height:500))
        view.addSubview(leftAlignSimpleView!)
    }
    
    
}

