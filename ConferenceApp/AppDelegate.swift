import HotwireNative
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let localPathConfigURL = Bundle.main.url(forResource: "path-configuration", withExtension: "json")!
        let remotePathConfigURL = URL(string: "http://localhost:5000/configurations/ios.json")! // Change to the correct URL

        Hotwire.loadPathConfiguration(from: [
            .file(localPathConfigURL),
            .server(remotePathConfigURL)
        ])

        return true
    }
}

