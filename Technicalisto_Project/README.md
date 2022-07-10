
# Technicalisto

## IOS How to Translate App in Many Language Native using [ BundleLocalization & UserDefaults ]

Note : 
       for easy understand firstly read this file ** once ** 
       & follow steps in new project from this [ReadMe](https://github.com/AyaBaghdadi/ios_translate_native.git) file or from this [Video]()
       
       
## Let's Start 

1. Create Your Design in Basic Language.

2. Add Bridging-Header & confirm added with path in build setting.

```
Technicalisto_Project/Technicalisto_Project-Bridging-Header.h
```

3. Add Group of localizeLibrary / localizeObjective.

4. Add ForceLanguage.swift File for handle.

5. In Bridging header add

```
#import "BundleLocalization.h"
#import "NSBundle+Localization.h"
```

6. In App Delegate Add method 

```
func forLanguage(){
let lang = UserDefaults.standard.object(forKey: "loclz") as? String
if lang != nil{
BundleLocalization.sharedInstance()?.language = lang!
}else{
//Device lang
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
```

7. Add Screen for change Language and add view Controller called ChangeLanguageVC.
// Note : You can hanle this screen by your design

8. in ChangeLanguageVC View Controller add method in place to navigate in your **Root** View controller after change language.

9. In Your Project -> Info -> Localization Add your second language.

10. Translate Storybored & open file to change Texts.

11. Add Localizable.strings file & Translate it.

### Thanks

This app is inspired by Aya Baghdadi”
and copyright for [@Technicalisto](https://www.youtube.com/channel/UC7554uvArdSxL4tlws7Wf8Q)
