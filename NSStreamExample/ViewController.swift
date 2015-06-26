//
//  ViewController.swift
//  NSStreamExample
//
//  Created by James Carroll on 6/25/15.
//  Copyright (c) 2015 James Carroll. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var usernameTF: UITextField!
  @IBOutlet weak var continueBtn: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func editingChanged(sender: UITextField) {
    continueBtn.enabled = sender.text != "" ? true : false
  }
  
  // MARK: - Navigation
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    (segue.destinationViewController as! ChatViewController).username = usernameTF.text
  }

}


