//
//  ViewController.swift
//  ColorPalette
//
//  Created by Nasim Nozirov on 05.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var screenView: UIView!
    
    @IBOutlet var displayRedLabel: UILabel!
    @IBOutlet var displayGreenLabel: UILabel!
    @IBOutlet var displayBlueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenView.layer.cornerRadius = 15
        setColor()
       setValue(for: displayRedLabel, displayGreenLabel, displayBlueLabel)
    }
    
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
            alpha: 1.0
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
