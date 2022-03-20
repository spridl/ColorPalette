//
//  ViewController.swift
//  ColorPalette
//
//  Created by Nasim Nozirov on 05.03.2022.
//

import UIKit

class SettingViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet var redTF: UITextField!
    @IBOutlet var greenTF: UITextField!
    @IBOutlet var blueTF: UITextField!
    
    var topVC: UIColor!
    var delegate: SettingViewControllerProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
        colorView.backgroundColor = topVC
    
        setColorSL()
        setValue(for: redLabel, greenLabel, blueLabel)
        showValue(for: redTF, greenTF, blueTF)
    }
    
    // MARK: IBActions
    @IBAction func colorSetting(_ sender: UISlider) {
      setColor()
        switch sender {
        case redSlider:
            redLabel.text = string(from: redSlider)
        case greenSlider:
            greenLabel.text = string(from: greenSlider)
        default:
            blueLabel.text = string(from: blueSlider)
        }
    }
    
    @IBAction func buttonPressed() {
        delegate.setColorView(for: colorView.backgroundColor ?? .white)
        dismiss(animated: true)
    }
}

extension SettingViewController: UITextFieldDelegate {
    
    // MARK: - Private Methods
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setColorSL() {
    let ciColor = CIColor(color: topVC)
        redSlider.value = Float(ciColor.red)
        greenSlider.value = Float(ciColor.green)
        blueSlider.value = Float(ciColor.blue)
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label  {
            case redLabel:
                redLabel.text = string(from: redSlider)
            case greenLabel:
                greenLabel.text = string(from: greenSlider)
            default:
                blueLabel.text = string(from: blueSlider)
            }
        }
    }
    
    private func showValue(for texFields: UITextField...) {
        texFields.forEach { texField in
            switch texField  {
            case redTF:
            texField.text = string(from: redSlider)
            case greenTF:
                texField.text = string(from: greenSlider)
            default:
                texField.text = string(from: blueSlider)
            }
        }
    }
    
    private func string(from slider: UISlider ) -> String {
        String(format: "%.2f", slider.value)
    }
}

