//
//  ViewController.swift
//  Great Number Game
//
//  Created by admin on 25/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFiled: UITextField!
    
    @IBAction func submitBtn(_ sender: UIButton) {
        let num : Int? = Int(textFiled.text!)
        if(num! < 44){
            createAlert(title: "Incorrect", msg:"\(num!) is too low" )
        }else if(num! == 44){
            createAlert(title: "Correct", msg:"\(num!) was correct!!!")
        }else{
            createAlert(title: "Incorrect", msg:"\(num!) is too high" )
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func createAlert(title:String,msg:String){
        let alert = UIAlertController(title: title, message: msg, preferredStyle: UIAlertController.Style.alert)
        var btTitle = "Guess Again"
        if(title=="Correct"){
            btTitle = "Play Again"
            alert.view.backgroundColor = UIColor.green
        }else{
            alert.view.backgroundColor = UIColor.red
        }
        alert.addAction(UIAlertAction(title: btTitle , style: UIAlertAction.Style.default, handler: {(action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated:true, completion: nil)
    }
}

