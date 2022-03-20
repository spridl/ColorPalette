//
//  ViewController.swift
//  ColorPalette
//
//  Created by Nasim Nozirov on 05.03.2022.
//

import UIKit

class SettingViewController: UIViewController {
    
    @IBOutlet weak var screenView: UIView!
    
    @IBOutlet weak var displayRedLabel: UILabel!
    @IBOutlet weak var displayGreenLabel: UILabel!
    @IBOutlet weak var displayBlueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var topVC: UIColor!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenView.layer.cornerRadius = 15
        screenView.backgroundColor = topVC
        
        setColor()
       setValue(for: displayRedLabel, displayGreenLabel, displayBlueLabel)
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let resultVC = segue.destination as? TopViewController else { return }
//        resultVC.settingVC.screenView.backgroundColor = self.view.backgroundColor
//    }
    
    @IBAction func colorSetting(_ sender: UISlider) {
      setColor()
        switch sender {
        case redSlider:
            displayRedLabel.text = string(from: redSlider)
        case greenSlider:
            displayGreenLabel.text = string(from: greenSlider)
        default:
            displayBlueLabel.text = string(from: blueSlider)
        }
    }
    
    private func setColor() {
        screenView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label  {
            case displayRedLabel:
                displayRedLabel.text = string(from: redSlider)
            case displayGreenLabel:
                displayGreenLabel.text = string(from: greenSlider)
            default:
                displayBlueLabel.text = string(from: blueSlider)
            }
        }
    }
    
    private func string(from slider: UISlider ) -> String {
        String(format: "%.2f", slider.value)
    }
}

//blueSlider.value = Float.random(in: 0...1)
//greenSlider.value = Float.random(in: 0...1)
//blueSlider.value = Float.random(in: 0...1)
