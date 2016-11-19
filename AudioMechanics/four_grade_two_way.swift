//
//  four_grade_two_way.swift
//  AudioMechanics
//
//  Created by Angelo Frangione on 08/09/2016.
//  Copyright © 2016 Angelo Frangione. All rights reserved.
//

import Cocoa

class four_grade_two_way: NSViewController {
    @IBOutlet weak var txt_frequency_separation: NSTextField!
    @IBOutlet weak var txt_impedance_1: NSTextField!
    @IBOutlet weak var txt_impedance_2: NSTextField!
    @IBOutlet weak var lbl_farad_1: NSTextField!
    @IBOutlet weak var lbl_farad_2: NSTextField!
    @IBOutlet weak var lbl_farad_3: NSTextField!
    @IBOutlet weak var lbl_farad_4: NSTextField!
    @IBOutlet weak var lbl_henry_1: NSTextField!
    @IBOutlet weak var lbl_henry_2: NSTextField!
    @IBOutlet weak var lbl_henry_3: NSTextField!
    @IBOutlet weak var lbl_henry_4: NSTextField!
    var farad_1 : Float = 0
    var farad_2 : Float = 0
    var farad_3 : Float = 0
    var farad_4 : Float = 0
    var henry_1 : Float = 0
    var henry_2 : Float = 0
    var henry_3 : Float = 0
    var henry_4 : Float = 0
    var frequency_separation : Float = 0
    var impedance_1 : Float = 0
    var impedance_2 : Float = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    @IBAction func calculate_linkwitz(_ sender: NSButton)
    {
        frequency_separation = txt_frequency_separation.floatValue
        impedance_1 = txt_impedance_1.floatValue
        impedance_2 = txt_impedance_2.floatValue
        farad_1 = 0.0844/(impedance_1*frequency_separation)
        farad_2 = 0.1688/(impedance_1*frequency_separation)
        farad_3 = 0.2533/(impedance_2*frequency_separation)
        farad_4 = 0.0563/(impedance_2*frequency_separation)
        henry_1 = 0.1000*impedance_1/frequency_separation
        henry_2 = 0.4501*impedance_1/frequency_separation
        henry_3 = 0.3000*impedance_2/frequency_separation
        henry_4 = 0.1500*impedance_2/frequency_separation
        lbl_farad_1.floatValue = farad_1
        lbl_farad_2.floatValue = farad_2
        lbl_farad_3.floatValue = farad_3
        lbl_farad_4.floatValue = farad_4
        lbl_henry_1.floatValue = henry_1
        lbl_henry_2.floatValue = henry_2
        lbl_henry_3.floatValue = henry_3
        lbl_henry_4.floatValue = henry_4
    }
    @IBAction func calculate_butterworth(_ sender: NSButton)
    {
        frequency_separation = txt_frequency_separation.floatValue
        impedance_1 = txt_impedance_1.floatValue
        impedance_2 = txt_impedance_2.floatValue
        farad_1 = 0.1040/(impedance_1*frequency_separation)
        farad_2 = 0.1470/(impedance_1*frequency_separation)
        farad_3 = 0.2509/(impedance_2*frequency_separation)
        farad_4 = 0.0609/(impedance_2*frequency_separation)
        henry_1 = 0.1009*impedance_1/frequency_separation
        henry_2 = 0.4159*impedance_1/frequency_separation
        henry_3 = 0.2437*impedance_2/frequency_separation
        henry_4 = 0.1723*impedance_2/frequency_separation
        lbl_farad_1.floatValue = farad_1
        lbl_farad_2.floatValue = farad_2
        lbl_farad_3.floatValue = farad_3
        lbl_farad_4.floatValue = farad_4
        lbl_henry_1.floatValue = henry_1
        lbl_henry_2.floatValue = henry_2
        lbl_henry_3.floatValue = henry_3
        lbl_henry_4.floatValue = henry_4
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
