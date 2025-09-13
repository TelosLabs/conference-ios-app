# iOS Conference App – Hotwire Native

This is the iOS native app built with [Hotwire Native](https://native.hotwired.dev/overview/how-it-works), serving as a client for an existing web application.

---

## 🚀 Features

- Powered by **Hotwire Native** for seamless hybrid navigation  
- Lightweight, fast, and easy to maintain  
- Simple setup with minimal code changes  

---

## 🛠 Setup Instructions

### 1. Set your Web App URL

Update the base URL of your web application so that the native client knows where to load content from.

#### 🔧 `AppDelegate.swift`

Find this line:

```swift
let remotePathConfigURL = URL(string: "http://localhost:5000/configurations/ios.json")!
```

Replace it with your actual URL:

```swift
let remotePathConfigURL = URL(string: "https://your-app.com")!
```

#### 🔧 `SceneDelegate.swift`

Do the same:

```swift
let rootURL = URL(string: "https://your-app.com")!
```

---

### 2. Run the app

Select a simulator or a physical device in Xcode and press `Cmd + R` to run the app.

---

## 📦 Dependencies

- [hotwire-native-ios](https://github.com/hotwired/hotwire-native-ios)
- Swift 5
- Xcode 15+

---

Built with ❤️ using Hotwire Native
