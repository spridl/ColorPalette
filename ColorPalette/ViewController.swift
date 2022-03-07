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
        screenView.layer.cornerRadius = screenView.frame.width / 60
        screenView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value), alpha: 1
            )
    }
    
    @IBAction func colorSetting() {
        settingLabel()
    
        screenView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func settingLabel() {
        displayRedLabel.text = String(format: "%.2f", redSlider.value)
        displayGreenLabel.text = String(format: "%.2f", greenSlider.value)
        displayBlueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
}


