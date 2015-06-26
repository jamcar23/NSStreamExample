//
//  ChatViewController.swift
//  NSStreamExample
//
//  Created by James Carroll on 6/25/15.
//  Copyright (c) 2015 James Carroll. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
  
  @IBOutlet weak var chatView: UITextView!
  @IBOutlet weak var messageField: UITextField!
  @IBOutlet weak var sendBtn: UIButton!
  
  var username: String!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    chatView.text = nil
    messageField.text = ""
    toggleSendBtn()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: - funcs
  
  // combines SIP command with username
  func buildUser() -> String {
    return "\(SIP.userOfMessage() + username)"
  }
  
  // combines buildUser() with SIP command and message text
  func buildMessage() -> String {
    return "\(SIP.messageOfMessage() + username): \(messageField.text)"
  }
  
  
  // update the chatView with a new message
  func updateChatView(message m: String) {
    chatView.text = chatView.text + m + "\n"
  }
  
  // toggles send btn 
  func toggleSendBtn() {
    sendBtn.enabled = messageField.text != "" ? true : false
  }
  
  func handleMessage(message m: String) {
    if m.rangeOfString("\(username): ") == nil {
      updateChatView(message: m)
    }
  }
  
  
  /*
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
  // Get the new view controller using segue.destinationViewController.
  // Pass the selected object to the new view controller.
  }
  */
  
  // MARK: - IBActions
  
  @IBAction func editingChanged(sender: UITextField) {
    toggleSendBtn()
  }
  
  
  @IBAction func sendBtnPressed(sender: UIButton) {

    updateChatView(message: "\(username): \(messageField.text)")
    messageField.text = ""
    toggleSendBtn()
  }
}
