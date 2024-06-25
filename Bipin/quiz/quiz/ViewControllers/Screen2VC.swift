//
//  Screen2VC.swift
//  quiz
//
//  Created by Darshan on 25/06/24.
//

import UIKit

class Screen2VC: UIViewController {

    class func instance() -> Screen2VC{
        let vc = storyBoardMain.instantiateViewController(withIdentifier: "Screen2VC") as! Screen2VC
        return vc
    }
    
    
    @IBOutlet weak var collViewQuiz: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpUI()
    }

    private func setUpUI(){
        registernib()
        collViewQuiz.delegate = self
        collViewQuiz.dataSource = self
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        collViewQuiz.collectionViewLayout = flowlayout
        collViewQuiz.decelerationRate = .normal
    }
}

extension Screen2VC:UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func registernib(){
     collViewQuiz.register(UINib(nibName:"QuizCell", bundle: nil), forCellWithReuseIdentifier: "QuizCell")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuizCell", for: indexPath) as! QuizCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let size  = collectionView.frame
        return CGSize(width: size.width, height: size.height)
    }

}
