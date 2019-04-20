
import UIKit

class PlayerController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    
    @IBOutlet weak var pilotSlider: UISlider!
    @IBOutlet weak var engineerSlider: UISlider!
    @IBOutlet weak var traderSlider: UISlider!
    @IBOutlet weak var fighterSlider: UISlider!
    @IBOutlet weak var pilotLabel: UILabel!
    @IBOutlet weak var engineerLabel: UILabel!
    @IBOutlet weak var traderLabel: UILabel!
    @IBOutlet weak var fighterLabel: UILabel!
    @IBOutlet weak var diffPicker: UIPickerView!
    @IBOutlet weak var nameText: UITextField!
    let pickerData = ["Easy","Normal","Hard"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pilotValueChanger(_ sender: UISlider) {
        let curr = Int(sender.value);
        pilotLabel.text = "\(curr)"
    }
    @IBAction func enginerValueChanger(_ sender: UISlider) {
        let curr = Int(sender.value);
        engineerLabel.text = "\(curr)"
    }
    @IBAction func traderValueChanger(_ sender: UISlider) {
        let curr = Int(sender.value);
        traderLabel.text = "\(curr)"
    }
    
    @IBAction func fighterValueChanger(_ sender: UISlider) {
        let curr = Int(sender.value);
        fighterLabel.text = "\(curr)"
    }
}
