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
            let buttonAppearance = UIBarButtonItemAppearance()
            let brandRed = UIColor(red: 203.0/255.0, green: 12.0/255.0, blue: 28.0/255.0, alpha: 1.0)

            appearance.backgroundEffect = nil
            appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            buttonAppearance.normal.titleTextAttributes = [.foregroundColor: brandRed]
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().tintColor = brandRed
        } else {
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        }
    }
}

