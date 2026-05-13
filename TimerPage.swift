import SwiftUI

struct TimerPage: View {

    @Binding var history: [String]

    @State var time = 1500
    @State var isRunning = false
    @State var isBreak = false

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {

        VStack(spacing: 24) {

            Text(isBreak ? "Break" : "Focus")
                .font(.title2)

            Text(timeString(time))
                .font(.system(size: 54, weight: .semibold, design: .rounded))
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray6))
                .cornerRadius(16)
                .padding(.horizontal)

            HStack {

                Button("Start") {
                    isRunning = true
                }
                .buttonStyle(.borderedProminent)

                Button("Pause") {
                    isRunning = false
                }
                .buttonStyle(.bordered)
            }

            Button("Reset") {
                isRunning = false
                time = isBreak ? 300 : 1500
            }
            .buttonStyle(.bordered)

            Button("Skip") {
                switchMode()
            }
            .foregroundColor(.secondary)
        }
        .padding(.top, 40)
        .onReceive(timer) { _ in

            if isRunning && time > 0 {
                time -= 1
            }

            if time == 0 {
                switchMode()
            }
        }
    }

    func switchMode() {

        isRunning = false

        if !isBreak {
            history.append("Focus session 25 minutes")
        }

        isBreak.toggle()
        time = isBreak ? 300 : 1500
    }

    func timeString(_ seconds: Int) -> String {
        let m = seconds / 60
        let s = seconds % 60
        return String(format: "%02d:%02d", m, s)
    }
}
