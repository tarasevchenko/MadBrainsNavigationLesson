//
//  ViewController.swift
//  nav test
//
//  Created by Тарас Евченко on 25.10.2021.
//

import UIKit

class ViewController: UIViewController, ViewController2Delegate {
    
    @IBOutlet weak var label: UILabel!
    
    func setText(text: String) {
        label.text = "Информация со второго экрана - \(text)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNextVC" {
            if let destVc = segue.destination as? ViewController2 {
                destVc.text = "Привет с первого экрана"
                destVc.delegate = self
            }
        }
    }
    
}

