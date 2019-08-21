import Foundation
import UIKit

class Util {
    
    static func enableScrollview(viewDelegate:UIScrollViewDelegate,  scrollview: UIScrollView){
        scrollview.contentSize = CGSize(width: Constants().screenWidth, height: Constants().screenHeight + Constants().keyBoardHeight)
        scrollview.delegate = viewDelegate
        
        ((viewDelegate) as! UIViewController).viewDidLoad()
    }
    
    
    static func dispAlert(_ vc:UIViewController, title:String, message:String, completion:@escaping (()->Void)={() -> Void in print("OK")}) -> Void {
        
        let alert: UIAlertController = UIAlertController(title: title, message: message, preferredStyle:  UIAlertController.Style.alert)
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{
            (action: UIAlertAction!) -> Void in
            print("OK")
            completion()
        })
        alert.addAction(defaultAction)
        
        vc.present(alert, animated: true, completion: nil)
    }
    
    
    static func dispConfirm(_ vc:UIViewController, title:String, message:String, completion:@escaping (()->Void)={() -> Void in print("OK")}) -> Void {
        
        let alert: UIAlertController = UIAlertController(title: title, message: message, preferredStyle:  UIAlertController.Style.alert)
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{
            (action: UIAlertAction!) -> Void in
            completion()
        })
        let cancelAction: UIAlertAction = UIAlertAction(title: "キャンセル", style: UIAlertAction.Style.cancel, handler:{
            (action: UIAlertAction!) -> Void in
            print("Cancel")
        })
        alert.addAction(cancelAction)
        alert.addAction(defaultAction)
        
        vc.present(alert, animated: true, completion: nil)
    }
    
    static func dispTextformAlert(_ vc:UIViewController, title:String, message:String, completion:@escaping ((_ text: String)->Void)={(_ text: String) -> Void in print("OK")}, recallAction: @escaping (()->Void)={() -> Void in print("Cancel")}) -> Void {
        let alert = UIAlertController(title: "入力項目", message: "内容を入力してください", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            (action:UIAlertAction!) -> Void in
            let textFields:Array<UITextField>? =  alert.textFields as Array<UITextField>?
            if textFields != nil {
                for textField:UITextField in textFields! {
                    //各textにアクセス
                    completion(textField.text!)
                }
            }
            
        })
        alert.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: {
            (action:UIAlertAction!) -> Void in
            recallAction()
        })
        alert.addAction(cancelAction)
        
        alert.addTextField(configurationHandler: {(textField: UITextField!) -> Void in
            textField.placeholder = "プレースホルダ"
        })
        
        vc.present(alert, animated: true, completion: nil)
    }
    
}

