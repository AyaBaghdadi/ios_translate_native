
//----------------------------------------------------------------------------------------------------
//  This app is inspired by Aya Baghdadi” and copyright for Technicalisto 2022
//----------------------------------------------------------------------------------------------------

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.forLanguage()
        
        return true
    }
    
    func forLanguage(){
        let lang = UserDefaults.standard.object(forKey: "loclz") as? String
        if lang != nil{
            BundleLocalization.sharedInstance()?.language = lang!
        }else{
            //device lang
        let current_lang = NSLocale.preferredLanguages[0]
        if current_lang.contains("ar"){
        UserDefaults.standard.set("ar", forKey: "loclz")
        BundleLocalization.sharedInstance()?.language = "ar"
        }else{
        UserDefaults.standard.set("en", forKey: "loclz")
        BundleLocalization.sharedInstance()?.language = "en"
        }
        }
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {

        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }


}

