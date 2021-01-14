//
//  ViewController.swift
//  KeyChainDemo
//
//  Created by Ashwini on 07/01/21.
//  Copyright © 2021 Ashwini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let int: Int = 555
        let data = Data(from: int)
        let status = KeyChain.save(key: "MyNumber", data: data)
        print("status: ", status)
        getValue()
    }
    
    func getValue(){
        if let receivedData = KeyChain.load(key: "MyNumber") {
            let result = receivedData.to(type: Int.self)
            print("result: ", result)
        }
    }


}

