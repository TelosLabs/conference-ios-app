import HotwireNative
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let localPathConfigURL = Bundle.main.url(forResource: "path-configuration", withExtension: "json")!
        let remotePathConfigURL = URL(string: "https://app.railsworld.com/configurations/ios.json")!

        Hotwire.loadPathConfiguration(from: [
            .file(localPathConfigURL),
            .server(remotePathConfigURL)
        ])

        configureNavigationBarAppearance()

        return true
    }

    private func configureNavigationBarAppearance() {
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()

            appearance.titleTextAttributes = [.foregroundColor: UIColor.white]

            UINavigationBar.appearance().standardAppearance = appearance
        } else {
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        }
    }
}

