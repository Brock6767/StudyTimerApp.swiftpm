import SwiftUI

struct ContentView: View {

    @State var history: [String] = []

    var body: some View {

        TabView {

            TimerPage(history: $history)
                .tabItem {
                    Label("Timer", systemImage: "timer")
                }

            HistoryPage(history: $history)
                .tabItem {
                    Label("History", systemImage: "list.bullet")
                }

            HomeworkPage()
                .tabItem {
                    Label("Homework", systemImage: "book")
                }

            MotivationPage()
                .tabItem {
                    Label("Focus", systemImage: "quote.bubble")
                }
        }
    }
}
