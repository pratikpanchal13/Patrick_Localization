//
//  Languages.swift
//  Patrick_Localization
//
//  Created by pratik panchal on 05/01/18.
//  Copyright © 2018 pratik panchal. All rights reserved.
//

import Foundation


//Always create class with nsobject if you want to acesss in objective c code
struct Languages{
    
//    static let OK = "OK".localized

    static var OK:String{ return "OK".localized}
    static var Cancel:String{ return "Cancel".localized}
    static var Choose_Option_language:String{ return "Choose Option language".localized}
    static var English:String{ return "English".localized}
    static var Spanish:String{ return "Spanish".localized}
    
}

extension String {
    
    var localized: String {
        return  Languages.LocStr(self) //NSLocalizedString(self, comment: "")
    }
}

extension Languages{
    
    static func LocStr(_ key: String) -> String {
        
        var selectedLanguage: String? = AppUserDefaults.localLanguage //UserDefaults.standard.object(forKey: AppUserDefaults.LocalLanguage) as? String
        if selectedLanguage == nil {
            
            //            UserDefaults.standard.set(Constants.str_EnglishLanguage, forKey:AppUserDefaults.LocalLanguage)
            AppUserDefaults.localLanguage = Constants.str_EnglishLanguage
            selectedLanguage = AppUserDefaults.localLanguage//UserDefaults.standard.object(forKey:AppUserDefaults.LocalLanguage) as? String
        }
        var path: String?
        if selectedLanguage != nil {
            
            if (selectedLanguage?.isEqual(Constants.str_EnglishLanguage))! {
                path = Bundle.main.path(forResource: "en", ofType: "lproj")
            }
            else if (selectedLanguage?.isEqual(Constants.str_SpanishLanguage))! {
                path = Bundle.main.path(forResource: "es", ofType: "lproj")
            }
        }
        if path == nil {
            path = Bundle.main.path(forResource: "en", ofType: "lproj")!
        }
        
        let languageBundle = Bundle(path: path!)
        let str = languageBundle?.localizedString(forKey: key, value: key, table: nil)
        return (str != nil) ? str! : ""
    }
}

