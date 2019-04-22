
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
    
    @IBAction func onStartClick(_ sender: Any) {
        let name : String = String(nameText.text!)
        let diff = pickerData[diffPicker.selectedRow(inComponent: 0)]
        let pilot = Int(pilotSlider.value);
        let engineer = Int(engineerSlider.value);
        let trader = Int(traderSlider.value);
        let fighter = Int(fighterSlider.value);
        let sum = pilot + engineer + trader + fighter
        if(sum == 16){
            var p : Player = Player.player; 
            p.updatePlayer(playername: name, pilot: pilot, fighter: fighter, trader: trader, engineer: engineer, diff: diff)
            var u : Universe = Universe.universe;
            u.generateUniverse();
            
            //p = Player(playername: name,pilot: pilot,fighter: fighter,trader: trader,engineer: engineer, diff: diff)
            //viewModel.update or whatever
            let alert = UIAlertController(title: nil, message: "Player Created (\name)", preferredStyle: .alert)
            alert.view.backgroundColor = UIColor.black
            alert.view.alpha = 0.6
            alert.view.layer.cornerRadius = 15
            self.present(alert, animated: true)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4) {
                alert.dismiss(animated: true)
            }
            //Universe universe = Universe.getInstance();
            //universe.generateUniverse();
            //viewModel.generatePlayerSolarSystem(universe.getPlanets().get((int)(Math.random() * 15)));
            //m.saveUniverse();
            //m.savePlayer();
        }
        else {
            let alert = UIAlertController(title: nil, message: "Player Not Created - Points Don't Add up to 16", preferredStyle: .alert)
            alert.view.backgroundColor = UIColor.black
            alert.view.alpha = 0.6
            alert.view.layer.cornerRadius = 15
            self.present(alert, animated: true)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4) {
                alert.dismiss(animated: true)
            }
        }
        //self.presentViewController(PlayGameController, animated: true)
    }
    
}
