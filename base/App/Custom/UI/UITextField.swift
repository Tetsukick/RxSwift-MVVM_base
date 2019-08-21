import UIKit

class BaseTextField: UITextField, UITextFieldDelegate {
    var parentScrollView:UIScrollView?                 = nil
    var parentScrollViewDelegate:UIScrollViewDelegate? = nil
    var doEditExec:(()->Void)                          = {}
    
    func setup(parentScrollView:UIScrollView, parentScrollViewDelegate:UIScrollViewDelegate, didEditExec:@escaping ()->Void = {}) {
        self.delegate = self
        self.parentScrollView = parentScrollView
        self.parentScrollViewDelegate = parentScrollViewDelegate
        self.doEditExec = didEditExec
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        Util.enableScrollview(viewDelegate:self.parentScrollViewDelegate!, scrollview: self.parentScrollView!)
        self.parentScrollView?.contentOffset = CGPoint(x: 0, y: 0)
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        self.parentScrollView?.contentSize = CGSize(width: Constants().screenWidth, height: 0)
        doEditExec()
        return true
    }
}


@IBDesignable class CustomTextField: BaseTextField {
    
}
