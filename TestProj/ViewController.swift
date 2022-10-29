//
//  ViewController.swift
//  TestProj
//
//  Created by Алексей Костюк on 26.10.2022.
//  Copyright © 2022 Алексей Костюк. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ColorView: UIView!
    @IBOutlet weak var BlueValueLabel: UILabel!
    @IBOutlet weak var GreenValueLabel: UILabel!
    @IBOutlet weak var RedValueLabel: UILabel!
    
    @IBOutlet weak var RedSlider: UISlider!
    @IBOutlet weak var GreenSlider: UISlider!
    @IBOutlet weak var BlueSlider: UISlider!
    
    let maxColorValue: Float = 255
    let minColorValue: Float  = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
       updateAllSlidersValues(value: 127)
        
      
        
        ColorView.backgroundColor = UIColor(
            red: 127 / 255.0,
            green: 127 / 255.0,
            blue: 127 / 255.0,
            alpha: 1.0)
    }

    @IBAction func MinPressed(_ sender: Any) {
        
        updateAllSlidersValues(value: Float(minColorValue))
        
         updateSlidersValues()
        
       updateColorView()
    }
    
    @IBAction func MediumPressed(_ sender: Any) {
        
        updateAllSlidersValues(value: (maxColorValue - minColorValue) / 2.0 + minColorValue)
        
        updateSlidersValues()
        
     updateColorView()
    }
    
    @IBAction func MaxPressed(_ sender: Any) {
        
         updateAllSlidersValues(value: Float(maxColorValue))
        
       updateSlidersValues()
        
     updateColorView()
    }
    
    
    @IBAction func RedValueChange(_ sender: Any) {
         updateSlidersValues()
    
      updateColorView()
    }
    
    @IBAction func GreenValueChange(_ sender: Any) {
    
      updateSlidersValues()
       
       updateColorView()
    }
    
    
    @IBAction func BlueValueChange(_ sender: Any) {
        
        updateSlidersValues()
        
        updateColorView()
    }
    
    func updateColorView (){ColorView.backgroundColor = UIColor(
        red: CGFloat(RedSlider.value) / 255.0,
        green: CGFloat(GreenSlider.value) / 255.0,
        blue: CGFloat(BlueSlider.value) / 255.0,
        alpha: 1.0)
}

    func updateSlidersValues() {   RedValueLabel.text = "\(Int(RedSlider.value))"
        GreenValueLabel.text = "\(Int(GreenSlider.value))"
        BlueValueLabel.text = "\(Int(BlueSlider.value))"}

    func updateAllSlidersValues ( value: Float) {
    RedSlider.value = value
        GreenSlider.value = value
        BlueSlider.value = value
    }


}
