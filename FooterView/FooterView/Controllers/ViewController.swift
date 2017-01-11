//
//  ViewController.swift
//  FooterView
//
//  Created by FARHAN IT SOLUTION on 07/01/17.
//  Copyright © 2017 Addon Web Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBAction func btnShowClicked(_ sender: Any) {
    let goToFirst = self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
    self.navigationController?.pushViewController(goToFirst, animated: true)

  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

