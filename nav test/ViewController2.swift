//
//  ViewController2.swift
//  nav test
//
//  Created by Тарас Евченко on 25.10.2021.
//

import UIKit

protocol ViewController2Delegate: AnyObject  {
    func setText(text: String)
}

class ViewController2: UIViewController {

    @IBOutlet private weak var label: UILabel!
    
    var text = ""
    weak var delegate: ViewController2Delegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
    }
    
    @IBAction func buttonBackTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        delegate?.setText(text: "Привет со второго экрана")
    }
    
}
