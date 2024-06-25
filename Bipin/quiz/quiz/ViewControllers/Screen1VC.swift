//
//  ViewController.swift
//  quiz
//
//  Created by Darshan on 25/06/24.
//

import UIKit

class Screen1VC: UIViewController {

    class func instance() -> Screen1VC{
        let vc = storyBoardMain.instantiateViewController(withIdentifier: "Screen1VC") as! Screen1VC
        return vc
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnPlayAction(_ sender: UIButton) {
        let vc = Screen2VC.instance()
    navigationController?.pushViewController(vc, animated: true)
    }

}

