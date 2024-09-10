//This Code Is Owned By LAI HONG YU
import Foundation

public struct DataSave {
    // Generic function to save any Encodable data type to UserDefaults
    public static func saveToUserDefaults<T: Encodable>(_ data: T, forKey key: String) -> Bool{
        let encoder = JSONEncoder()
        do {
            let encodedData = try encoder.encode(data)
            UserDefaults.standard.set(encodedData, forKey: key)
        } catch {
            print("Failed to encode data: \(error.localizedDescription)")
            return false
        }
        return true
    }

    // Generic function to retrieve any Decodable data type from UserDefaults
    public static func retrieveFromUserDefaults<T: Decodable>(forKey key: String, as type: T.Type) -> T? {
        guard let savedData = UserDefaults.standard.data(forKey: key) else { return nil }
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(T.self, from: savedData)
            return decodedData
        } catch {
            print("Failed to decode data: \(error.localizedDescription)")
            return nil
        }
    }
}
