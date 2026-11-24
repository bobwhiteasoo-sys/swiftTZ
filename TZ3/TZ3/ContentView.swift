import SwiftUI

struct ContentView: View {
    var body: some View {
        // NavigationStack позволяет переходить на другие экраны.
        NavigationStack {
            List {
                Section("Приветствие") {
                    Text("hello world")
                        .font(.title)

                    Text("Выбери экран, который хочешь открыть.")
                }

                Section("Экраны") {
                    NavigationLink("О приложении") {
                        AboutView()
                    }

                    NavigationLink("Системные действия") {
                        SystemView()
                    }
                }
            }
            .navigationTitle("Главная")
        }
    }
}
