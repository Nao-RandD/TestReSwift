//
//  ViewController.swift
//  TestReSwift
//
//  Created by Naoyuki Kan on 2021/04/05.
//

import UIKit
import ReSwift

class ViewController: UIViewController, StoreSubscriber {

	@IBOutlet weak var label: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		mainStore.subscribe(self)
	}

	@IBAction func countUp(_ sender: Any) {
		mainStore.dispatch(CounterActionIncrease())
	}

	@IBAction func countDown(_ sender: Any) {
		mainStore.dispatch(CounterAcitonDecrease())
	}

	func newState(state: AppState) {
		label.text = "\(mainStore.state.counter)"
	}
}

