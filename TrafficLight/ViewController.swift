

import UIKit

class ViewController: UIViewController {
    
    let currentAlpha: CGFloat = 0.3

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = currentAlpha
        yellowView.alpha = currentAlpha
        greenView.alpha = currentAlpha
        
        startButton.layer.cornerRadius = 17
        
        redView.layer.cornerRadius = redView.bounds.size.height / 2
        yellowView.layer.cornerRadius = yellowView.bounds.size.height / 2
        greenView.layer.cornerRadius = greenView.bounds.size.height / 2
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        
        startButton.setTitle("START", for: .normal)
        
        if redView.alpha == yellowView.alpha {
            redView.alpha = CGFloat(MAXFLOAT)
            greenView.alpha = currentAlpha
        }
        else if redView.alpha > currentAlpha, yellowView.alpha == greenView.alpha {
            yellowView.alpha = CGFloat(MAXFLOAT)
            redView.alpha = currentAlpha
        }
        else if yellowView.alpha > currentAlpha, greenView.alpha == redView.alpha {
            greenView.alpha = CGFloat(MAXFLOAT)
            yellowView.alpha = currentAlpha
        }
    }
}

