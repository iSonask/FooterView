//
//  FooterController.swift
//  FooterView
//
//  Created by FARHAN IT SOLUTION on 07/01/17.
//  Copyright © 2017 Addon Web Solutions. All rights reserved.
//

import UIKit

class FooterController: UIViewController {

  @IBOutlet var myView: UIView!
  
  @IBOutlet var btnFirst: UIButton!
  
  @IBOutlet var btnSecond: UIButton!
  
  @IBOutlet var btnThird: UIButton!
  
  @IBOutlet var btnFourth: UIButton!
  
  //MARK:- ViewLifeCycle
  
  override func viewDidLoad() {
        super.viewDidLoad()
      myView = Bundle.main.loadNibNamed("FooterController", owner: self, options: nil)?[0] as! UIView
      myView.frame = CGRect(x: 0, y: UIScreen.main.bounds.height - 80 , width: UIScreen.main.bounds.width , height: 80)
      self.view.addSubview(myView)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    self.navigationItem.setHidesBackButton(true, animated:true);
  }

  override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
  }
  
  //MARK:- Button Actions
  @IBAction func btnFirstClicked(_ sender: Any) {
      GoToFirst()
  }

  @IBAction func btnSecondClicked(_ sender: Any) {
    GoToSecond()
  }
  
  @IBAction func btnThirdClicked(_ sender: Any) {
    GoToThird()
  }
  
  @IBAction func btnFourthClicked(_ sender: Any) {
    GoToFourth()
  }
  
  //MARK:- Goto Controller
  func GoToFirst() -> Void {
    
    for vc: UIViewController in self.navigationController!.viewControllers {
      if (vc is FirstViewController) {
        _ = navigationController?.popToViewController(vc, animated: false)
        return
      }
    }
    let goToFirst = self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
    self.navigationController?.pushViewController(goToFirst, animated: false)
  }
  
  func GoToSecond() -> Void {
    
    for vc: UIViewController in self.navigationController!.viewControllers {
      if (vc is SecondViewController) {
        _ = navigationController?.popToViewController(vc, animated: false)
        return
      }
    }
    let goToSecond = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
    self.navigationController?.pushViewController(goToSecond, animated: false)
  }
  
  func GoToThird() -> Void {
    
    for vc: UIViewController in self.navigationController!.viewControllers {
      if (vc is ThirdViewController) {
        _ = navigationController?.popToViewController(vc, animated: false)
        return
      }
    }
    
    let goToThird = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
    self.navigationController?.pushViewController(goToThird, animated: false)
  }
  
  func GoToFourth() -> Void {
    
    for vc: UIViewController in self.navigationController!.viewControllers {
      if (vc is FourthViewController) {
        _ = navigationController?.popToViewController(vc, animated: false)
        return
      }
    }
    
    let goToFourth = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
    self.navigationController?.pushViewController(goToFourth, animated: false)
  }
  
}
