//
//  PreferanceVC.swift
//  Patrick_Localization
//
//  Created by pratik panchal on 05/01/18.
//  Copyright © 2018 pratik panchal. All rights reserved.
//

import UIKit

class PreferanceVC: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        PKLanguageUitily().setLocalizationButton(btnBack)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnBackClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnSelectLanguageClicked(_ sender: Any) {
        let optionMenu = UIAlertController(title: nil, message:Languages.Choose_Option_language,  preferredStyle: .actionSheet)
        
        let englishAction = UIAlertAction(title: Languages.English, style: .default, handler:
        {
            
            (alert: UIAlertAction!) -> Void in
            print("English")
            AppUserDefaults.localLanguage = Constants.str_EnglishLanguage
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
            self.navigationController?.popViewController(animated: true)
        })
        
        let spanishAction = UIAlertAction(title:Languages.Spanish, style: .default, handler:
        {
            (alert: UIAlertAction!) -> Void in
            print("Spanish")
            AppUserDefaults.localLanguage = Constants.str_SpanishLanguage
            self.navigationController?.popViewController(animated: true)
        })
      
        let frenchAction = UIAlertAction(title:Languages.French, style: .default, handler:
        {
            (alert: UIAlertAction!) -> Void in
            print("French")
            AppUserDefaults.localLanguage = Constants.str_FrenchLanguage
            print("AppUserDefaults.localLanguage",AppUserDefaults.localLanguage)
            self.navigationController?.popViewController(animated: true)
        })
      
        let hindiAction = UIAlertAction(title:Languages.Hindi, style: .default, handler:
        {
            (alert: UIAlertAction!) -> Void in
            print("Hindi")
            AppUserDefaults.localLanguage = Constants.str_HindiLanguage
            self.navigationController?.popViewController(animated: true)
        })
        
        let gujaratiAction = UIAlertAction(title:Languages.Gujarati, style: .default, handler:
        {
            (alert: UIAlertAction!) -> Void in
            print("Gujarati")
            AppUserDefaults.localLanguage = Constants.str_GujaratiLanguage
            self.navigationController?.popViewController(animated: true)
        })
        
        let arabichAction = UIAlertAction(title:Languages.Arabic, style: .default, handler:
        {
            (alert: UIAlertAction!) -> Void in
            print("Arabic")
            AppUserDefaults.localLanguage = Constants.str_ArabicLanguage
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
            self.navigationController?.popViewController(animated: true)
        })
        
        let cancelAction = UIAlertAction(title: Languages.Cancel, style: .cancel, handler:
        {
            (alert: UIAlertAction!) -> Void in
            print("Cancelled")
        })
        optionMenu.addAction(englishAction)
        optionMenu.addAction(spanishAction)
        optionMenu.addAction(frenchAction)
        optionMenu.addAction(hindiAction)
        optionMenu.addAction(gujaratiAction)
        optionMenu.addAction(arabichAction)
        optionMenu.addAction(cancelAction)
        self.present(optionMenu, animated: true, completion: nil)

    }

}
