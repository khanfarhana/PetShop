//
//  ViewController.swift
//  Pet Shop
//
//  Created by TRYCATCH CLASSES on 04/03/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let BreedArr = ["Afghan Hound","American Bulldog","Auggie","Australian Terrier","Beagle","American Pugabull","Husky","Great Pyrenees","Havanese","Dalmatian","King Shepherd"]
    let NameArr = ["Tara","Oscar","Rose","Jenny","Ginger","Cuddle","Lola","Dester","Ben","Rockstar","Trippy"]
    let AgeArr = ["1","9","4","5","9","11","9","4","5","9","6"]
    let LengthArr = ["2.0","0.9","0.8","0.9","1.2","2.0","0.9","0.8","0.9","1.2","0.7"]
    let GenderArr = ["Female","Male","Female","Female","Male","Female","Male","Female","Female","Male","Female"]
    let ColorArr = ["Light Brown","White","Black","Brown","Half White","Light Brown","White","Black","Brown","Half White","Black"]
    let imgArr = ["Afghan","Bulldog","auggie","Australian Terrier","Beagle","Pugabull","Husky","Pyrenees","Havanese","Dalmatian","Shepherd"]
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NameArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTVC
        cell.imgV.image = UIImage(named: "\(imgArr[indexPath.row])")
        cell.breedlb.text = "\(BreedArr[indexPath.row])"
        cell.namelb1.text = "\(NameArr[indexPath.row])"
        cell.ageLb.text = "\(AgeArr[indexPath.row]) Months Old / \(LengthArr[indexPath.row]) feet length"
        cell.GenderLb.text = "Gender: \(GenderArr[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        vc.imgVc = UIImage(named: "\(imgArr[indexPath.row])")!
        vc.breed = BreedArr[indexPath.row]
        vc.gender = GenderArr[indexPath.row]
        vc.name = NameArr[indexPath.row]
        vc.colr = " Color \(ColorArr[indexPath.row]) "
        vc.length = " Length: \(LengthArr[indexPath.row]) feet "
        vc.age = " Age: \(AgeArr[indexPath.row]) Months "
        self.navigationController?.pushViewController(vc, animated: true)
       // present(vc, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "List Of Puppies"
    }


}

