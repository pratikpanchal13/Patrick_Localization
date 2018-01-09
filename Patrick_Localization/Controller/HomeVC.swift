//
//  ViewController.swift
//  Patrick_Localization
//
//  Created by pratik panchal on 05/01/18.
//  Copyright © 2018 pratik panchal. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    //MARK:- Outlets & Variables
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblLanguageName: UILabel!

    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        


        self.setLocatizationString()    // Func Set Localization String
        self.setRtoLsupprt()            // Func Set R to L Support VisaVersa
    }
    
    
    //MARK:- Function Set Localization String
    func setLocatizationString(){

        lblName.text = Languages.Welcome
        lblLanguageName.text = AppUserDefaults.localLanguage
    }
    
    //MARK:- Function R to L Supprot
    func setRtoLsupprt(){
        
        PKLanguageUitily().setLocalizationLabel(lblName)
        PKLanguageUitily().setLocalizationView(self.view)

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

