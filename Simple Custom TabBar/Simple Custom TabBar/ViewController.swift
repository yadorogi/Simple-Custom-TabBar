//
//  ViewController.swift
//  Simple Custom TabBar
//
//  Created by Tetsuo Kawakami on 2023/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewfortab: UIView!
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        designTabBar()
    }

    /// customize Tab bar design.
    func designTabBar() {
        viewfortab.clipsToBounds = false
    }
    
    /// Click Tab bar Item button.
    @IBAction func onClickTabBarItem(_ sender: UIButton) {
        let tag = sender.tag

        switch tag {
        case 1:
            guard let FirstTab = self.storyboard?.instantiateViewController(identifier: "FirstTabViewController") as? FirstTabViewController else { return }
            contentView.addSubview(FirstTab.view)
        case 2:
            guard let SecondTab = self.storyboard?.instantiateViewController(identifier: "SecondTabViewController") as? SecondTabViewController else { return }
            contentView.addSubview(SecondTab.view)
        case 3:
            guard let ThirdTab = self.storyboard?.instantiateViewController(identifier: "ThirdTabViewController") as? ThirdTabViewController else { return }
            contentView.addSubview(ThirdTab.view)
        case 4:
            guard let ForthTab = self.storyboard?.instantiateViewController(identifier: "ForthTabViewController") as? ForthTabViewController else { return }
            contentView.addSubview(ForthTab.view)
        case 5:
            guard let FifthTab = self.storyboard?.instantiateViewController(identifier: "FifthTabViewController") as? FifthTabViewController else { return }
            contentView.addSubview(FifthTab.view)
        default:
            print("OOPS! onClick unknown tab item.")
        }
    }
}
