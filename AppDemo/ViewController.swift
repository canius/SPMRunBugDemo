//
//  ViewController.swift
//  AppDemo
//
//  Created by canius.chu on 2021/8/26.
//

import UIKit

struct Model {
    let id: String
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var ids = Set<String>()
        var array = [Model]()
        array = array.filter { ids.insert($0.id).inserted }
        // Do any additional setup after loading the view.
    }


}

