//
//  TopViewController.swift
//  ColorPalette
//
//  Created by Nasim Nozirov on 19.03.2022.
//

import UIKit

class TopViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? SettingViewController else { return }
        resultVC.topVC = view.backgroundColor
    }
    
}
