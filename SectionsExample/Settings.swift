

import SwiftUI
import Combine

class Settings: ObservableObject {
    var didChange = PassthroughSubject<Void, Never>()
    
    @Published var isBluetoothOn = false { didSet { update() } }
    
    @Published var types = ["Off","On"]
    @Published var type = 0 { didSet { update() } }
    
    @Published var isToggleOn = false { didSet { update() } }
    
    func update() {
        didChange.send(())
    }
}







