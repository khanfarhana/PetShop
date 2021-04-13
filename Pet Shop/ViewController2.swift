//
//  ViewController2.swift
//  Pet Shop
//
//  Created by TRYCATCH CLASSES on 04/03/21.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var imgV: UIImageView!
    @IBOutlet weak var vBreedLb: UILabel!
    @IBOutlet weak var vGenderLb: UILabel!
    @IBOutlet weak var vNameLb: UILabel!
    @IBOutlet weak var vLengthLb: UILabel!
    @IBOutlet weak var vAgeLb: UILabel!
    @IBOutlet weak var vColorLb: UILabel!
    
    var imgVc = UIImage()
    var breed = ""
    var gender = ""
    var name = ""
    var length = ""
    var age = ""
    var colr = ""
    
    
    @IBAction func backBtn(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        print("hi")
        present(vc, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        imgV.image = imgVc
        vBreedLb.text = breed
        vGenderLb.text = gender
        vNameLb.text = name
        vLengthLb.text = length
        vAgeLb.text = age
        vColorLb.text = colr
        vColorLb.layer.cornerRadius = 6
        vColorLb.layer.borderWidth = 0.4
       // vColorLb.layer.borderColor = UIColor.black.cgColor
        vLengthLb.layer.cornerRadius = 6
        vLengthLb.layer.borderWidth = 0.4
        vAgeLb.layer.cornerRadius = 6
        vAgeLb.layer.borderWidth = 0.4
        // Do any additional setup after loading the view.
    }
  
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
