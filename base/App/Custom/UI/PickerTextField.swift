import UIKit

class PickerTextField: UITextField, UIPickerViewDelegate, UIPickerViewDataSource {
    var dataList = [String]()
    
    func setup(dataList: [String]) {
        self.dataList = dataList
        
        let picker = UIPickerView()
        picker.delegate = self
        picker.dataSource = self
        picker.showsSelectionIndicator = true
        
        let toolbar = UIToolbar(frame: CGRect(x:0, y:0, width:0, height:35))
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action:
            #selector(PickerTextField.done))
        let cancelItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(PickerTextField.cancel))
        toolbar.setItems([cancelItem, doneItem], animated: true)
        
        self.inputView = picker
        self.inputAccessoryView = toolbar
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.text = dataList[row]
    }
    
    @objc func cancel() {
        self.text = ""
        self.endEditing(true)
    }
    
    @objc func done() {
        self.endEditing(true)
    }
}
