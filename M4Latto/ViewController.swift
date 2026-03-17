//
//  ViewController.swift
//  M4Latto
//
//  Created by Boston, Samuel T. on 2/10/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numLabel1: UILabel!
    
    @IBOutlet weak var numLabel2: UILabel!
    
    @IBOutlet weak var numLabel3: UILabel!
    @IBOutlet weak var numLabel4: UILabel!
    @IBOutlet weak var numLabel5: UILabel!
    @IBOutlet weak var numLabel6: UILabel!
    @IBOutlet weak var numLabel7: UILabel!
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
       
    }

    func getColors(from number: Int?) -> (Background: UIColor,textColor: UIColor){
        guard let number = number else {
            return (UIColor.purple, UIColor.white)
        }
        switch number{
        case 1...10:
            return(UIColor.red, UIColor.white)
        case 11...20:
            return(UIColor.green, UIColor.black)
        case 21...30:
            return(UIColor.blue, UIColor.white)
        case 31...40:
            return(UIColor.yellow, UIColor.black)
        case 41...45:
            return(UIColor.green, UIColor.black)
        default:
            return(UIColor.purple, UIColor.white)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let labels = [numLabel1!, numLabel2!, numLabel3!, numLabel4!, numLabel5!, numLabel6!, numLabel7!]
        
        var nums = [Int]()
        while nums.count < labels.count {
            let rndNum = Int.random(in: 1...45)
            if !nums.contains(rndNum){
                nums.append(rndNum)
            }
        }
        let sortedNums = nums.sorted()
        // nums.sorted(by: >)
        
        for (index, label) in labels.enumerated(){
            label.layer.cornerRadius = label.bounds.width / 2
            label.clipsToBounds = true
            
            label.text = "\(sortedNums[index])"
            
            label.backgroundColor = getColors(from: sortedNums[index]).Background
            label.textColor = getColors(from: sortedNums[index]).textColor
            
            
        }
        let colors = getColors(from: nil)
        numLabel7.backgroundColor = UIColor.Background
        numLabel7.textColor = .textColors
    }


}


