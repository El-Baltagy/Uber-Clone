import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("YOUR KEY HERE")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

// UNUserNotificationCenter.current().delegate = self

// let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
// UNUserNotificationCenter.current().requestAuthorization(
//   options: authOptions,
//   completionHandler: { _, _ in }
// )

// application.registerForRemoteNotifications()
