import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Белый фон на весь экран
            Color.white
                .ignoresSafeArea()
            // Текст по центру экрана
            Text("hello world")
                .font(.title)
                .foregroundColor(.black)
        }
    }
}
