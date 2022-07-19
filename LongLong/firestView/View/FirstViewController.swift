//
//  ViewController.swift
//  LongLong
//
//  Created by 小野拓人 on 2022/07/18.
//

import UIKit
import Foundation

class FirstViewController: UIViewController {
    
    var presenter: FirstInputProtocol?
    
    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction private func tappedButton(_ sender: UIButton) {
        presenter?.textSave(text: textField.text!)
        self.presenter?.screenMove()
        
        //ここに入れなきゃ画面遷移しない。。
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.present(secondViewController, animated: true, completion: nil)
    }
}

