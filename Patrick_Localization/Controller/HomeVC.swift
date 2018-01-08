//
//  ViewController.swift
//  Patrick_Localization
//
//  Created by pratik panchal on 05/01/18.
//  Copyright © 2018 pratik panchal. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        lblName.text = Languages.OK
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnChangeLanguageClicked(_ sender: Any) {
        
        let preferanceVC  : PreferanceVC = self.storyboard?.instantiateViewController(withIdentifier: "PreferanceVC") as! PreferanceVC
        self.navigationController?.pushViewController(preferanceVC, animated: true)
    }
}

