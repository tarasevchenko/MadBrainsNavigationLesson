//
//  ViewController4.swift
//  nav test
//
//  Created by Тарас Евченко on 27.10.2021.
//

import UIKit

class ViewController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToRootTapped(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }

}
