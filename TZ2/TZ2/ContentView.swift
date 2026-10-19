import SwiftUI

struct ContentView: View {
    @State var isRed = false

    var body: some View {
        Button("Нажми") {
            isRed = !isRed
        }
        .padding()
        .background(isRed ? Color.red : Color.blue)
        .foregroundColor(.white)
        .cornerRadius(10)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
