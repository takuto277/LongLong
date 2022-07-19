//
//  SecondPresenter.swift
//  LongLong
//
//  Created by 小野拓人 on 2022/07/18.
//

import Foundation

final class SecondPresenter {
    var view: SecondOutputProtocol?
    var firstViewController: SecondViewController?
    private var model: Model = Model()
    
    
    func outputLabel (text: String)  {
        guard let text = self.model.text else { return }
    }
}
