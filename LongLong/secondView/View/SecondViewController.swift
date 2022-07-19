//
//  SecondViewController.swift
//  LongLong
//
//  Created by 小野拓人 on 2022/07/18.
//

import UIKit

class SecondViewController: UIViewController {
    
    var presenter: SecondInputProtocol?
    var model: Model?

    @IBOutlet private weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  //      self.Label.text = presenter?.outputLabel()

        self.Label.text = model?.text
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if self.Label.text == "" {
            self.Label.text = "なにも入ってません"
        }
    }
    

}
