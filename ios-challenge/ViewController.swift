//
//  ViewController.swift
//  ios-challenge
//
//  Created by Lorraine Alexander on 4/15/19.
//  Copyright © 2019 Owlet Baby Care Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, StoreSubscriber {
    
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        store.subscribe(self)
        // Do any additional setup after loading the view.
    }
    
    func newState(state: State) {
        let count = (store.state as? AppState)?.counter ?? 0
        countLabel.text = String(count)
    }
    
    @IBAction func didTapIncreaseButton(_ sender: Any) {
        store.dispatch(action: IncreaseAction(increaseBy: 1))
    }
    
    @IBAction func didTapDecreaseButton(_ sender: Any) {
        store.dispatch(action: DecreaseAction(decreaseBy: 1))
    }
}

