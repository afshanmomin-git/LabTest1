//
//  ViewController.swift
//  LabTest1
//
//  Created by Afshan M on 2022-02-11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var N1: UILabel!
    @IBOutlet weak var N2: UILabel!
    @IBOutlet weak var N3: UILabel!
    @IBOutlet weak var N4: UILabel!
    @IBOutlet weak var N5: UILabel!
    @IBOutlet weak var N6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
//    ********* METHOD 1 *************
//
//    func randomInt(max:Int) -> Int
//    {
//        let rand: Int = Int(arc4random())
//        return(rand % max)+1
//    }
//
//    func randomNum() ->[Int]
//    {
//        let max: Int = 65
//        var array : [Int] = [];
//        for _ in 1...6 {
//            var random = randomInt(max: max)
//            if array.contains(random) {
//                random = random+1
//            }
//            array.append(random)
//        }
//        return array
//    }
    
//  ********* METHOD 2 (NO REPETITION) *************
    
    func randomNum ()->[Int]{
        var array : [Int] = [];
        var randomArray : [Int] = [];

        for index in 1...65{
            array.append(index)
            randomArray = array.shuffled()
        }
        return randomArray
    }

    // When Draw Button is pressed
    @IBAction func Draw(_ sender: UIButton)
    {
        let res :[Int] = randomNum()
        N1.text = String(res[0])
        N2.text = String(res[1])
        N3.text = String(res[2])
        N4.text = String(res[3])
        N5.text = String(res[4])
        N6.text = String(res[5])
    }
    
    // When clear button is pressed
    @IBAction func clear(_ sender: UIButton)
    {
        N1.text = String("-")
        N2.text = String("-")
        N3.text = String("-")
        N4.text = String("-")
        N5.text = String("-")
        N6.text = String("-")
    }
}

