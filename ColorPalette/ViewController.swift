//
//  ViewController.swift
//  ColorPalette
//
//  Created by Nasim Nozirov on 05.03.2022.
//

import UIKit
//Greated by Nasim on 232

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
        
        settingSlider()
        
    }

    @IBAction func ColorSetting() {
        settingLabel()
       
        screenView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(1))
    }
   
    
    
    
    private func settingLabel() {
        displayRedLabel.text = String(redSlider.value)
        displayGreenLabel.text = String(greenSlider.value)
        displayBlueLabel.text = String(blueSlider.value)
       }
    
    private func settingSlider() {
        redSlider.value = 1
        redSlider.minimumValue = 0.5
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        
        greenSlider.value = 1
        greenSlider.minimumValue = 0.5
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        
        blueSlider.value = 1
        blueSlider.minimumValue = 0.5
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
    }

}


