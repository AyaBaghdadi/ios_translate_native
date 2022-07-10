
//----------------------------------------------------------------------------------------------------
//  ChangeLanguageVC
//  Created by Aya Baghdadi 2022.
//----------------------------------------------------------------------------------------------------

import UIKit

class ChangeLanguageVC: UIViewController {

    @IBOutlet weak var englishBtn: UIButton!
    @IBOutlet weak var arabicBtn: UIButton!
    let lang = UserDefaults.standard.object(forKey: "loclz") as? String

    override func viewDidLoad() {
        super.viewDidLoad()
        if lang != nil{
        if lang == "en"{
        if let image = UIImage(named: "check_full_l") {
            self.englishBtn.setBackgroundImage(image, for: .normal)
        }
        if let image = UIImage(named: "check_empty_l") {
            self.arabicBtn.setBackgroundImage(image, for: .normal)
        }
        }else{
        if let image = UIImage(named: "check_full_l") {
            self.arabicBtn.setBackgroundImage(image, for: .normal)
        }
        if let image = UIImage(named: "check_empty_l") {
            self.englishBtn.setBackgroundImage(image, for: .normal)
        }
        }
        }
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }


    @IBAction func arabicTapped(_ sender: UIButton) {
        if let image = UIImage(named: "check_full_l") {
        if sender.currentImage == image {
            return
        }
        self.arabicBtn.setBackgroundImage(image, for: .normal)
        }
        if let image = UIImage(named: "check_empty_l") {
            self.englishBtn.setBackgroundImage(image, for: .normal)
        }
        UserDefaults.standard.set("ar", forKey: "loclz")
        BundleLocalization.sharedInstance()?.language = "ar"

        self.NavigateToRootViewController()

    }
    
    
    @IBAction func englishTapped(_ sender: UIButton) {
        
        if let image = UIImage(named: "check_full_l") {
            if sender.currentImage == image {
                return
            }
            self.englishBtn.setBackgroundImage(image, for: .normal)
        }
        if let image = UIImage(named: "check_empty_l") {
            self.arabicBtn.setBackgroundImage(image, for: .normal)
        }
        UserDefaults.standard.set("en", forKey: "loclz")
        BundleLocalization.sharedInstance()?.language = "en"
        
        self.NavigateToRootViewController()

    }
    
    func NavigateToRootViewController(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let VC = storyboard.instantiateViewController(withIdentifier: "Home")
        VC.modalPresentationStyle = .fullScreen
        self.present(VC, animated: true, completion: nil)
    }
    
    
}
