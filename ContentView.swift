import SwiftUI

struct ContentView: View {
@State var history: [String] = []

var body: some View {
TabView {
    TimerView(history: $history)
    .tabItem {
    Label("Timer", systemImage: "timer")
    }


