//
//  PKLanguageUitily.swift
//  Patrick_Localization
//
//  Created by pratik panchal on 08/01/18.
//  Copyright © 2018 pratik panchal. All rights reserved.
//

import Foundation
import UIKit


//MARK:- Localization Class
class PKLanguageUitily
{

    //MARK:- View Localization
    func setLocalizationView(_ view : UIView){
        
        if AppUserDefaults.localLanguage == Constants.str_ArabicLanguage{
            UIView.appearance().semanticContentAttribute = .forceRightToLeft
            view.semanticContentAttribute = .forceRightToLeft
        }else{
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
            view.semanticContentAttribute = .forceLeftToRight
        }
    }
    
    //MARK:- TextField Localization
    func setLocalizationTextField(_ textField : UITextField){

        if AppUserDefaults.localLanguage == Constants.str_ArabicLanguage{
            textField.textAlignment = .right
        }else{
            textField.textAlignment = .left
        }
    }
    
    //MARK:- Lable Localization
    func setLocalizationLabel(_ label : UILabel){

        if AppUserDefaults.localLanguage == Constants.str_ArabicLanguage{
            label.textAlignment = .right
        }else{
            label.textAlignment = .left
        }
    }
}


