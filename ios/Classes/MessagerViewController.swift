//
//  MessagerViewController.swift
//  Runner
//
//  Created by Artur "RoketStorm" Shamsutdinov on 28.08.2020.
//

import UIKit
import MessageUI

class MessagerViewController: UIViewController, MFMessageComposeViewControllerDelegate {    
    override func viewDidLoad() {
        super.viewDidLoad()
        let messageVC = MFMessageComposeViewController()
        messageVC.body = "Enter a message details here";
        messageVC.recipients = ["recipients_number_here"]
        messageVC.messageComposeDelegate = self
        self.present(messageVC, animated: true, completion: nil)
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        switch (result) {
        case .cancelled:
            print("Message was cancelled")
        case .failed:
            print("Message failed")
        case .sent:
            print("Message was sent")
        default:
            return
        }
        dismiss(animated: true, completion: nil)
    }

}
