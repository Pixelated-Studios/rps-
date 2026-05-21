// Defaults.swift
import Foundation

@propertyWrapper
struct UserDefault<T> {
    let key: String
    let defaultValue: T
    var storage: UserDefaults = .standard
    var wrappedValue: T {
        get { storage.object(forKey: key) as? T ?? defaultValue }
        set { storage.set(newValue, forKey: key) }
    }
}
