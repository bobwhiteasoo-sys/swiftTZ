import SwiftUI

struct AboutView: View {
    var body: some View {
        List {
            Section("О приложении") {
                Text("Учебное приложение на SwiftUI.")
                Text("В нём три экрана и кнопки для работы с системой.")
            }

            Section("Переход") {
                NavigationLink("Системные действия") {
                    SystemView()
                }
            }
        }
        .navigationTitle("О приложении")
        // Кнопку «Назад» добавляет сам NavigationStack.
        .navigationBarTitleDisplayMode(.inline)
    }
}
