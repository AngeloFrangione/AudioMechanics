//
//  second_grade_two_way.swift
//  AudioMechanics
//
//  Created by Angelo Frangione on 31/08/2016.
//  Copyright © 2016 Angelo Frangione. All rights reserved.
//

import Cocoa

class second_grade_two_way: NSViewController {
    
    @IBOutlet weak var txt_frequency_separation: NSTextField!
    @IBOutlet weak var txt_impedance_1: NSTextField!
    @IBOutlet weak var txt_impedance_2: NSTextField!
    

    @IBOutlet weak var lbl_farad_1: NSTextField!
    @IBOutlet weak var lbl_farad_2: NSTextField!
    @IBOutlet weak var lbl_henry_1: NSTextField!
    @IBOutlet weak var lbl_henry_2: NSTextField!
    
    var frequency_separation : Float = 0
    var impedance_1 : Float = 0
    var impedance_2 : Float = 0
    
    var farad_1 : Float = 0
    var farad_2 : Float = 0
    var henry_1 : Float = 0
    var henry_2 : Float = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculate_linkwitz(_ sender: NSButton)
    {
        frequency_separation = txt_frequency_separation.floatValue
        impedance_1 = txt_impedance_1.floatValue
        impedance_2 = txt_impedance_2.floatValue
        farad_1 = 0.0796/(impedance_1*frequency_separation)
        farad_2 = 0.0796/(impedance_2*frequency_separation)
        henry_1 = 0.3183*impedance_1/frequency_separation
        henry_2 = 0.3183*impedance_2/frequency_separation
        lbl_farad_1.stringValue = "\(farad_1)"
        lbl_farad_2.stringValue = "\(farad_2)"
        lbl_henry_1.stringValue = "\(henry_1)"
        lbl_henry_2.stringValue = "\(henry_2)"
    }
    
    @IBAction func calculate_butterworth(_ sender: NSButton)
    {
        frequency_separation = txt_frequency_separation.floatValue
        impedance_1 = txt_impedance_1.floatValue
        impedance_2 = txt_impedance_2.floatValue
        farad_1 = 0.1125/(impedance_1*frequency_separation)
        farad_2 = 0.1125/(impedance_2*frequency_separation)
        henry_1 = 0.2251*impedance_1/frequency_separation
        henry_2 = 0.2251*impedance_2/frequency_separation
        lbl_farad_1.stringValue = "\(farad_1)"
        lbl_farad_2.stringValue = "\(farad_2)"
        lbl_henry_1.stringValue = "\(henry_1)"
        lbl_henry_2.stringValue = "\(henry_2)"
    }
    @IBAction func quit(_ sender: NSButton)
    {
        self.dismiss(self)
    }
    override func cancelOperation(_ sender: Any?)
    {
        self.dismiss(self)
    }
}
