
import SwiftUI
import Combine

struct BluetoothView: View {
    @ObservedObject var bluetooth = Settings()

    var body: some View {
        return NavigationLink(destination: ToggleBluetoothView(bluetooth: bluetooth)) {
            HStack() {
                Image("default")
                    .resizable()
                    .cornerRadius(12)
                    .frame(width: 25, height: 25)
                    .clipped()
                    .aspectRatio(contentMode: .fit)
                Text("Bluetooth")
                    .foregroundColor(.blue)
                    .font(.system(size: 20))
                    .frame(width: 150,height: 40, alignment: .leading)
                Text(bluetooth.isBluetoothOn ? "On" : "Off")
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                    .font(.subheadline)
                    .frame(width: 170, height: 40, alignment: .trailing)
            }
        }
    }
}

struct ToggleBluetoothView: View {
   @ObservedObject var bluetooth: Settings
    
    var body: some View {
        Form {
            Section(header: Text("ENABLE TO CONNECT WITH NEARBY DEVICES")) {
                Toggle(isOn: $bluetooth.isBluetoothOn) {
                    Text("Bluetooth")
                    }
            
                if bluetooth.isBluetoothOn {
                    HStack {
                    Text("Searching for nearby devices...")
                    .foregroundColor(.gray)
                    .font(.system(size: 18))
                    .font(.system(.subheadline))
                    ActivityIndicator(style: .medium)
                    }
                }
            }
        }
    }
}
