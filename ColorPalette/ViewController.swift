//
//  ViewController.swift
//  ColorPalette
//
//  Created by Nasim Nozirov on 05.03.2022.
//

import UIKit
//Greated by Nasim on 06.03.2022

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
        
        redSlider.value = 0.1
        redSlider.minimumTrackTintColor = .red
        
        greenSlider.value = 0.1
        greenSlider.minimumTrackTintColor = .green
        
        blueSlider.value = 0.1
        blueSlider.minimumTrackTintColor = .blue
    }
    
    override func viewDidLayoutSubviews() {
        screenView.layer.cornerRadius = screenView.frame.width / 60
     }
    
    @IBAction func ColorSetting() {
        settingLabel()
        
        screenView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func settingLabel() {
        displayRedLabel.text = String(redSlider.value)
        displayGreenLabel.text = String(greenSlider.value)
        displayBlueLabel.text = String(blueSlider.value)
    }
}


