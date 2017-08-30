import UIKit

class ViewController: UIViewController {
	
	var sum = ["", "", ""]
	var currentNum = 0
	
	
	@IBOutlet weak var sumLabel: UILabel!
	
	
	@IBAction func button1(_ sender: Any) {
		sum[currentNum].append("1")
		sumLabel.text = "\(sum[currentNum])"
	}
	
	@IBAction func button2(_ sender: Any) {
		sum[currentNum].append("2")
		sumLabel.text = "\(sum[currentNum])"
	}
	
	@IBAction func button3(_ sender: Any) {
		sum[currentNum].append("3")
		sumLabel.text = "\(sum[currentNum])"
	}

	@IBAction func button4(_ sender: Any) {
		sum[currentNum].append("4")
		sumLabel.text = "\(sum[currentNum])"
	}
	
	@IBAction func button5(_ sender: Any) {
		sum[currentNum].append("5")
		sumLabel.text = "\(sum[currentNum])"
	}
	
	@IBAction func button6(_ sender: Any) {
		sum[currentNum].append("6")
		sumLabel.text = "\(sum[currentNum])"
	}
	
	@IBAction func button7(_ sender: Any) {
		sum[currentNum].append("7")
		sumLabel.text = "\(sum[currentNum])"
	}
	
	@IBAction func button8(_ sender: Any) {
		sum[currentNum].append("8")
		sumLabel.text = "\(sum[currentNum])"
	}
	
	@IBAction func button9(_ sender: Any) {
		sum[currentNum].append("9")
		sumLabel.text = "\(sum[currentNum])"
	}
	
	@IBAction func button0(_ sender: Any) {
		sum[currentNum].append("0")
		sumLabel.text = "\(sum[currentNum])"
	}
	
	@IBOutlet weak var buttonPoint: UIButton!
	@IBAction func buttonPoint(_ sender: Any) {
		sum[currentNum].append(".")
		sumLabel.text = "\(sum[currentNum])"
		self.buttonPoint.isEnabled = false
	}
	
	@IBAction func buttonPlus(_ sender: Any) {
		sum.insert("+", at: 1)
		sumLabel.text = "\(sum[1])"
		currentNum = 2
		buttonPoint.isEnabled = true
	}

	@IBAction func buttonMinus(_ sender: Any) {
		sum.insert("-", at: 1)
		sumLabel.text = "\(sum[1])"
		currentNum = 2
		buttonPoint.isEnabled = true
	}
	
	@IBAction func buttonTimes(_ sender: Any) {
		sum.insert("x", at: 1)
		sumLabel.text = "\(sum[1])"
		currentNum = 2
		buttonPoint.isEnabled = true
	}
	
	@IBAction func buttonDivide(_ sender: Any) {
		sum.insert("/", at: 1)
		sumLabel.text = "\(sum[1])"
		currentNum = 2
		buttonPoint.isEnabled = true
	}
	
	@IBAction func buttonClear(_ sender: Any) {
		sum = ["", "", ""]
		currentNum = 0
		sumLabel.text = "0"
		buttonPoint.isEnabled = true
	}
	
	@IBAction func buttonEquals(_ sender: Any) {
		if sum[1] == "+"{
			let total = Float(sum[0])! + Float(sum[2])!
			if floor(total) == total {
				sumLabel.text = "\(Int(total))"
			} else {
				sumLabel.text = "\(total)"
			}
			sum = ["", "", ""]
		}
		else if sum[1] == "-"{
			let total = Float(sum[0])! - Float(sum[2])!
			if floor(total) == total {
				sumLabel.text = "\(Int(total))"
			} else {
				sumLabel.text = "\(total)"
			}
			sum = ["", "", ""]
		}
		else if sum[1] == "x"{
			let total = Float(sum[0])! * Float(sum[2])!
			if floor(total) == total {
				sumLabel.text = "\(Int(total))"
			} else {
				sumLabel.text = "\(total)"
			}
			sum = ["", "", ""]
		}
		else if sum[1] == "/"{
			let total = Float(sum[0])! / Float(sum[2])!
			if floor(total) == total {
				sumLabel.text = "\(Int(total))"
			} else {
				sumLabel.text = "\(total)"
			}
			sum = ["", "", ""]
		}
		currentNum = 0
		buttonPoint.isEnabled = true
	}

	
	override func viewDidLoad() {
		super.viewDidLoad()
		sumLabel.text = "0"
	}
	
}
