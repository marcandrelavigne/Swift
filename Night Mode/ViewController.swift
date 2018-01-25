//
//  ViewController.swift
//  GitHub Examples
//
//  Created by Marc-André Lavigne on 18-01-23.
//  Copyright © 2018 Marc-André Lavigne. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var mainView: UIView!
    
    var viewColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    var textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    var colorNumber: Int!
    
    @IBOutlet weak var NMSwitch: UISwitch!
    
    override func viewDidLoad() {
        checkfornightmode()
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated : Bool) {
        super.viewDidAppear(animated)
        
        if self.isMovingFromParentViewController {
            checkfornightmode()
            if UserDefaults.standard.integer(forKey: "mode") == 1 {
                NMSwitch.isOn = true
            } else {
                NMSwitch.isOn = false
            }
        }
    }
    
    @IBAction func switchClicked(_ sender: Any) {
        
        if mySwitch.isOn == true {
            viewColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            mainView.tintColor = textColor
            mainView.backgroundColor = viewColor
            colorNumber = 1
            UserDefaults.standard.set(colorNumber, forKey: "mode")
        } else {
            viewColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            mainView.tintColor = textColor
            mainView.backgroundColor = viewColor
            colorNumber = 2
            UserDefaults.standard.set(colorNumber, forKey: "mode")
        }
    }

    func checkfornightmode() {
        if UserDefaults.standard.integer(forKey: "mode") == 1 {
            viewColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            mainView.tintColor = textColor
            mainView.backgroundColor = viewColor
            NMSwitch.isOn = true
        } else {
            viewColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            mainView.tintColor = textColor
            mainView.backgroundColor = viewColor
            NMSwitch.isOn = false
        }
    }
    
}
