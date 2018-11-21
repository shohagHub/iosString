//
//  ViewController.swift
//  StringOperations
//
//  Created by Nazia Afroz on 17/11/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelWithColor: UILabel!
    @IBOutlet weak var attributedString: UILabel!
    @IBOutlet weak var imageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var strOperation = StringOperationObjc.init()
        label.attributedText = strOperation.getAttributeStringWithDifferentFont()
        
        
        labelWithColor.attributedText = strOperation.getAttributeStringWithDifferentColor()
        
        attributedString.attributedText = StringOperationObjc.createAttributed()
        imageLabel.attributedText = StringOperationObjc.textWithIcon()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

