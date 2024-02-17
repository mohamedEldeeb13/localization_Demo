//
//  ViewController.swift
//  localization_Demo
//
//  Created by Mohamed Abd Elhakam on 15/02/2024.
//

import UIKit
import MOLH

class ViewController: UIViewController {

    @IBOutlet weak var langBtn: UIButton!
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    var country : [String : String] =
        ["ar" : "مصر" , "en" : "Egypt"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        langBtn.setTitle("langBtn".localized , for: .normal)
        countryName.text = "Lang".localized == "en" ? country["en"] : country["ar"]
    }
    
    @IBAction func onPressedButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Error".localized,
                                      message: "ErrorMsg".localized,
                                      preferredStyle: .alert)
        let dismissBtn = UIAlertAction(title: "DismissBtn".localized, style: .default)
        alert.addAction(dismissBtn)
        self.present(alert, animated: true)
    }
    

    @IBAction func onPressLanguage(_ sender: UIButton) {
        MOLH.setLanguageTo(MOLHLanguage.currentAppleLanguage() == "en" ? "ar" : "en")
        MOLH.reset()
        
        //MARK: Another way
//        let currentLang = Locale.current.language.languageCode
//        let newLang = currentLang == "en" ? "ar" : "en"
//        UserDefaults.standard.setValue([newLang], forKey: "AppleLanguages")
//        exit(0)
    }
    
}

