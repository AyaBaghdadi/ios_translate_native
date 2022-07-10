

import UIKit

extension UIView{
    open override func awakeFromNib() {
        super.awakeFromNib()
        let lang = UserDefaults.standard.object(forKey: "loclz") as? String
        if lang != nil{
        if lang == "ar"{
            self.semanticContentAttribute = .forceRightToLeft
        }else{
            self.semanticContentAttribute = .forceLeftToRight
        }
        }
    }

}



extension UITableView{
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        let lang = UserDefaults.standard.object(forKey: "loclz") as? String
        if lang != nil{
            if lang == "ar"{
                self.semanticContentAttribute = .forceRightToLeft
            }else{
                self.semanticContentAttribute = .forceLeftToRight
            }
        }
    }

    
}


extension UICollectionView{
    open override func awakeFromNib() {
        super.awakeFromNib()
        let lang = UserDefaults.standard.object(forKey: "loclz") as? String
        if lang != nil{
            if lang == "en"{
                
                self.transform = CGAffineTransform(scaleX: 1, y: 1)

            }else{
                self.transform = CGAffineTransform(scaleX: -1, y: 1)

            }
        }
       
    }
}


extension UICollectionViewCell{
    open override func awakeFromNib() {
        super.awakeFromNib()
        let lang = UserDefaults.standard.object(forKey: "loclz") as? String
        if lang != nil{
            if lang == "en"{
                self.semanticContentAttribute = .forceRightToLeft

            }else{
        self.semanticContentAttribute = .forceLeftToRight
            }

    }
    }}

extension UIImageView{
    open override func awakeFromNib() {
        super.awakeFromNib()
}
}


extension UITextField :  UITextFieldDelegate {
    open override func awakeFromNib() {
        super.awakeFromNib()
        let lang = UserDefaults.standard.object(forKey: "loclz") as? String
        if lang != nil{
            if(self.textAlignment == .center){
            print("Center can not changed")
            }else{
            if lang == "ar"{
                self.textAlignment = .right
            }else{
                self.textAlignment = .left
            }
            }
        }

    }
    
}


extension UITextView {
    open override func awakeFromNib() {
        super.awakeFromNib()
        self.font =  UIFont.init(name: "Cairo-Bold", size: self.font!.pointSize)!

        let lang = UserDefaults.standard.object(forKey: "loclz") as? String
        if lang != nil{
            if lang == "ar"{
                self.textAlignment = .right
            }else{
                self.textAlignment = .left
            }
        }
    }
}


extension UIButton {
    open override func awakeFromNib() {
        super.awakeFromNib()



        }}

extension UILabel {
    open override func awakeFromNib() {
        super.awakeFromNib()
        let lang = UserDefaults.standard.object(forKey: "loclz") as? String
        if lang != nil{
            if(self.textAlignment == .center){
              print("Center can not changed")
            }else{
                if lang == "ar"{
                    self.textAlignment = .right
        
                }else{
                    self.textAlignment = .left
             
                }

            }
        }
    }
}




