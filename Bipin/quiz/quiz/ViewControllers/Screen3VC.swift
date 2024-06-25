//
//  Screen3VC.swift
//  quiz
//
//  Created by Darshan on 25/06/24.
//

import UIKit

class Screen3VC: UIViewController {

    class func instance() -> Screen3VC{
        let vc = storyBoardMain.instantiateViewController(withIdentifier: "Screen3VC") as! Screen3VC
        return vc
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
