import SwiftUI

struct ContentView: View {
@State var history: [String] = []

var body: some View {
TabView {
    TimerView(history: $history)
    .tabItem {
    Label("Timer", systemImage: "timer")
    }

    HistoryView(history: $history)
        .tabItem {
            Label("History", systemImage: "list.bullet")
            
            StreakView()
                .tabItem {
                    Label("Streak", systemImage: "flame.fill")
                }

            
            
        }
    }
    }
    }

