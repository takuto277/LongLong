//
//  FIrstPresenter.swift
//  LongLong
//
//  Created by 小野拓人 on 2022/07/18.
//

import Foundation
import SwiftUI

final class FirstPresenter {
    var view: FirstOutputProtocol?
    var firstViewController: FirstViewController?
    var model: Model!
    
    
    private func textSave(text: String) {
        self.model.text = text
    }
    
    private func screenMove() {
        let secondViewController = firstViewController?.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        firstViewController?.present(secondViewController, animated: true, completion: nil)
    }
}
