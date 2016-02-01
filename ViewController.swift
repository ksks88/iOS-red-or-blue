//
//  ViewController.swift
//  RedOrBlue
//
//  Created by Salih Hajlakovic on 28/01/16.
//  Copyright © 2016 Salih Hajlakovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BlueBG: UIImageView!
    @IBOutlet weak var RedBG: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClicked(sender: UIButton) {
        if sender.tag == 0 {
            BlueBG.hidden = false
            RedBG.hidden = true
        }
        else
        {
            BlueBG.hidden = true
            RedBG.hidden = false
        }
        for view in self.view.subviews as [UIView] {
            if let btn = view as? UIButton {
                if(btn.tag != sender.tag){
                    self.view.bringSubviewToFront(btn)
                    btn.hidden = false
                    sender.hidden = true
                    break
                }
            }
        }
        
    }
}

