import Flutter
import UIKit

public class AccountSaverAgainstUninstallPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "account_saver_against_uninstall", binaryMessenger: registrar.messenger())
    let instance = AccountSaverAgainstUninstallPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
