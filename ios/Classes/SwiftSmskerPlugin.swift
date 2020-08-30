import Flutter
import UIKit
import MessageUI

public class SwiftSmskerPlugin: NSObject, FlutterPlugin, UINavigationControllerDelegate {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "smsker", binaryMessenger: registrar.messenger())
    let instance = SwiftSmskerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if (call.method == "sendSms") {
        if MFMessageComposeViewController.canSendText() {
            let root = UIApplication.shared.keyWindow?.rootViewController
            UIApplication.shared.keyWindow?.rootViewController?.present(MessagerViewController(), animated: true, completion: nil)
        }
        result(100500)
    } else {
        result (200500)
    }
  }
}
