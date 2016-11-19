//
//  first_grade_two_way.swift
//  AudioMechanics
//
//  Created by Angelo Frangione on 31/08/2016.
//  Copyright © 2016 Angelo Frangione. All rights reserved.
//

import Cocoa

class first_grade_two_way: NSViewController
{
    
    @IBOutlet weak var lbl_farad: NSTextField!
    @IBOutlet weak var lbl_henry: NSTextField!
    
    @IBOutlet weak var txt_frequency_separation: NSTextField!
    @IBOutlet weak var txt_impedance_1: NSTextField!
    @IBOutlet weak var txt_impedance_2: NSTextField!
    
    var frequency_separation : Float = 0
    var impedance_1 : Float = 0
    var impedance_2 : Float = 0
    
    var farad : Float = 0
    var henry : Float = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculate(_ sender: NSButton)
    {
        frequency_separation = txt_frequency_separation.floatValue
        impedance_1 = txt_impedance_1.floatValue
        impedance_2 = txt_impedance_2.floatValue
        
        farad = 0.159/(impedance_1*frequency_separation)
        henry = impedance_2/(6.28*frequency_separation)
        
        lbl_farad.stringValue = "\(farad)"
        lbl_henry.stringValue = "\(henry)"
        
    }
    override func cancelOperation(_ sender: Any?)
    {
        self.dismiss(self)
    }
    @IBAction func quit(_ sender: NSButton)
    {
        self.dismiss(self)
    }
}
