# DataSave

`DataSave` is a Swift Package that provides a simple, generic interface for saving and retrieving any `Encodable` and `Decodable` data type to and from `UserDefaults`.

## Features

- Save any data type conforming to `Encodable` to `UserDefaults`.
- Retrieve any data type conforming to `Decodable` from `UserDefaults`.
- Supports iOS, macOS, watchOS, and tvOS.

## Requirements

- Swift 5.7 or higher
- iOS 12.0+, macOS 10.14+, watchOS 6.0+, tvOS 12.0+

## Installation

### Swift Package Manager

To add the `DataSave` package to your project:

1. Open your project in Xcode.
2. Select **File > Add Packages**.
3. Enter the URL "https://github.com/jay-lchicken/DataSave".

## How to Use
For example, if you created your own data type
```
import DataSave
struct Log: Codable {
    let message: String
    let timestamp: Date
}
```
You can then save it and get the result by typing
```
let log = Log(message: "App launched", timestamp: Date())
let success = UserDefaultsHelper.saveToUserDefaults(log, forKey: "logKey")
if success {
    print("Data saved successfully.")
} else {
    print("Failed to save data.")
}
```
The Key allows you to save data to a specific location and fetch from that same specific location
You can fetch the Data by typing
```
if let savedLog: Log = UserDefaultsHelper.retrieveFromUserDefaults(forKey: "logKey", as: Log.self) {
    print("Retrieved log: \(savedLog.message) at \(savedLog.timestamp)")
} else {
    print("No data found for the given key.")
}
```
