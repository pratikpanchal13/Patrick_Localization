//
//  Constants.swift
//  Patrick_Localization
//
//  Created by pratik panchal on 05/01/18.
//  Copyright © 2018 pratik panchal. All rights reserved.
//

import Foundation



struct Constants{
//class Constants:NSObject{

    //MARK: - Strings
    
    //MARK: - Language
    static let str_EnglishLanguage = "EnglishLanguage"
    static let str_SpanishLanguage = "SpanishLanguage"
    static let str_FrenchLanguage = "FrenchLanguage"
    static let str_HindiLanguage =  "HindiLanguage"
    static let str_GujaratiLanguage = "GujaratiLanguage"
    static let str_ArabicLanguage  = "ArabicLanguage"
    
}



struct AppUserDefaults {
    
    //MARK: - Userdefault
    public static let LocalLanguage = "LocalLanguage"

    static var localLanguage:String? {
        get {return UserDefaults.standard.string(forKey: LocalLanguage)}
        set(v) {UserDefaults.standard.set(v, forKey: LocalLanguage)}
    }
    
    
}
