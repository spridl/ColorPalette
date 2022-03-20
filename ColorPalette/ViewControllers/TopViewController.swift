//
//  TopViewController.swift
//  ColorPalette
//
//  Created by Nasim Nozirov on 19.03.2022.
//

import UIKit

protocol SettingViewControllerProtocol {
    func setColorView(for colorValue: UIColor)
}


class TopViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? SettingViewController else { return }
        resultVC.topVC = view.backgroundColor
        resultVC.delegate = self
}
}
    extension TopViewController: SettingViewControllerProtocol{
        func setColorView(for colorValue: UIColor) {
            view.backgroundColor = colorValue
        }

    }

