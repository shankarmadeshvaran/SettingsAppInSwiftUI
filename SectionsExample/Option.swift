

//Option.swift
import SwiftUI
import Combine

struct Option: Codable {
    var id: Int
    var title: String
    var isAddSection: Bool
    var values: [InnerOptionValues]
}

struct InnerOptionValues: Codable {
    var title: String
    var isAddSection: Bool
    var isUseToggle: Bool
    var headerTitle: String
}

extension Option {
    static let generalValues: [InnerOptionValues] = [
        .init(title: "About", isAddSection: true, isUseToggle: false, headerTitle: ""),
        .init(title: "Keyboard", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Fonts", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Language & Region", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Dictionary", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Reset", isAddSection: true, isUseToggle: false, headerTitle: "")
    ]
    
    static let accessibilityValues: [InnerOptionValues] = [
        .init(title: "Display & Text Size", isAddSection: true, isUseToggle: false, headerTitle: "VISION"),
        .init(title: "Motion", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Spoken Content", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Touch", isAddSection: true, isUseToggle: false, headerTitle: "PHYSICAL AND MOTOR"),
        .init(title: "Face ID & Attention", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Keyboards", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Subtitle & Captioning", isAddSection: true, isUseToggle: false, headerTitle: "HEARING")
    ]
    
    static let privacyValues: [InnerOptionValues] = [
        .init(title: "Location", isAddSection: true, isUseToggle: true, headerTitle: "ENABLE TO ACCESS LOCATION"),
        .init(title: "Contact", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Calander", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Remainders", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Photos", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Bluetooth", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Speech Recognition", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Camera", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Health", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "HomeKit", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Media & Apple Music", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Files & Folders", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Advertising", isAddSection: true, isUseToggle: false, headerTitle: "")
    ]
    
    static let passwordAndAccountsValues: [InnerOptionValues] = [
        .init(title: "Website and App Passwords", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "AutoFill Passwords", isAddSection: false, isUseToggle: true, headerTitle: ""),
        .init(title: "Add Account", isAddSection: true, isUseToggle: false, headerTitle: "ACCOUNTS"),
        .init(title: "Fetch New Data", isAddSection: false, isUseToggle: false, headerTitle: "")
    ]
    
    static let mapsValues: [InnerOptionValues] = [
        .init(title: "Siri & Search", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Notifications", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Background App Refresh", isAddSection: true, isUseToggle: true, headerTitle: "ALLOW MAPS TO ACCESS"),
        .init(title: "Driving", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Walking", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Transit", isAddSection: true, isUseToggle: false, headerTitle: ""),
        .init(title: "In Miles", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "In Kilometers", isAddSection: false, isUseToggle: false, headerTitle: "")
    ]
    
    static let safariValues: [InnerOptionValues] = [
        .init(title: "Siri & Search", isAddSection: true, isUseToggle: false, headerTitle: "ALLOW SAFARI TO ACCESS"),
        .init(title: "Search Engine", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Search Engine Suggestions", isAddSection: false, isUseToggle: true, headerTitle: ""),
        .init(title: "Safari Suggestions", isAddSection: false, isUseToggle: true, headerTitle: ""),
        .init(title: "Quick Website Search", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "AutoFill", isAddSection: true, isUseToggle: false, headerTitle: "GENERAL"),
        .init(title: "Frequently Visited Sites", isAddSection: false, isUseToggle: true, headerTitle: ""),
        .init(title: "Favorites", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Block Pop-ups", isAddSection: false, isUseToggle: true, headerTitle: ""),
        .init(title: "Show Link Previews", isAddSection: false, isUseToggle: true, headerTitle: ""),
        .init(title: "Downloads", isAddSection: false, isUseToggle: false, headerTitle: "")
    ]
    
    static let newsValues: [InnerOptionValues] = [
        .init(title: "Siri & Search", isAddSection: true, isUseToggle: false, headerTitle: "ALLOW NEWS TO ACCESS"),
        .init(title: "Background App Refresh", isAddSection: false, isUseToggle: true, headerTitle: ""),
        .init(title: "Show Story Previews", isAddSection: true, isUseToggle: true, headerTitle: "NEWS SETTINGS"),
        .init(title: "Restrict Stories in Today", isAddSection: true, isUseToggle: true, headerTitle: ""),
        .init(title: "Privacy", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Reset Identifier", isAddSection: false, isUseToggle: true, headerTitle: ""),
        .init(title: "Acknowledgements", isAddSection: true, isUseToggle: false, headerTitle: "")
    ]
    
    static let developerValues: [InnerOptionValues] = [
        .init(title: "DarkApperance", isAddSection: true, isUseToggle: true, headerTitle: "APPERANCE"),
        .init(title: "Enable UI Automation", isAddSection: false, isUseToggle: true, headerTitle: ""),
        .init(title: "Multipath Networking", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Fill Rate", isAddSection: true, isUseToggle: false, headerTitle: "DEVELOPER APP TESTING"),
        .init(title: "Ad Refersh Rate", isAddSection: false, isUseToggle: false, headerTitle: ""),
        .init(title: "Highlight Clipped Banners", isAddSection: false, isUseToggle: true, headerTitle: ""),
        .init(title: "Unlimited Ad Presentation", isAddSection: false, isUseToggle: true, headerTitle: ""),
    ]
    
    static let options: [Option] = [
        .init(id: 1, title: "General", isAddSection: false, values: generalValues),
        .init(id: 2, title: "Accessibility", isAddSection: false, values: accessibilityValues),
        .init(id: 3, title: "Privacy", isAddSection: false, values: privacyValues),
        .init(id: 4, title: "Password & Accounts", isAddSection: true, values: passwordAndAccountsValues),
        .init(id: 5, title: "Maps", isAddSection: false, values: mapsValues),
        .init(id: 6, title: "Safari", isAddSection: false, values: safariValues),
        .init(id: 7, title: "News", isAddSection: false, values: newsValues),
        .init(id: 8, title: "Developer", isAddSection: true, values: developerValues)
    ]
}
