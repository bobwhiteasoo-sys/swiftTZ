import SwiftUI
import UIKit

struct SystemView: View {
    // Через openURL можно открыть сайт в браузере.
    @Environment(\.openURL) private var openURL

    // При изменении этих значений SwiftUI обновляет экран.
    @State private var showAlert = false
    @State private var alertMessage = ""

    let message = "Привет из моего приложения!"

    var body: some View {
        List {
            Section("Сообщение") {
                Text(message)
            }

            Section("Действия") {
                Button("Открыть сайт Apple") {
                    if let url = URL(string: "https://www.apple.com") {
                        openURL(url) { opened in
                            if !opened {
                                alertMessage = "Не удалось открыть сайт."
                                showAlert = true
                            }
                        }
                    }
                }

                Button("Скопировать текст") {
                    // Записываем сообщение в системный буфер обмена.
                    UIPasteboard.general.string = message
                    alertMessage = "Текст скопирован. Его можно вставить в другом приложении."
                    showAlert = true
                }

                // ShareLink открывает системное меню «Поделиться».
                ShareLink("Поделиться текстом", item: message)
            }
        }
        .navigationTitle("Системные действия")
        .navigationBarTitleDisplayMode(.inline)
        .alert("Сообщение", isPresented: $showAlert) {
            Button("ОК", role: .cancel) { }
        } message: {
            Text(alertMessage)
        }
    }
}
