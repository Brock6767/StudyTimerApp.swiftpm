import SwiftUI

struct TimerView: View {
@Binding var history: [String]

@State var time = 1500
@State var isRunning = false
@State var isBreak = false

let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

var body: some View {
VStack(spacing: 20) {

Text(isBreak ? "Break Time" : "Study Time")
.font(.largeTitle)

Text("\(time / 60):\(String(format: "%02d", time % 60))")
.font(.system(size: 50))

HStack {

Button("Start") {
isRunning = true
}
.padding()

Button("Reset") {
isRunning = false
time = isBreak ? 300 : 1500
}
.padding()

Button("Skip") {
switchMode()
}
.padding()
}

Text(isBreak ? "Take a break" : "Focus now")
.foregroundColor(.gray)
}
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

if isBreak == false {
history.append("Studied 25 minutes")
}

isBreak.toggle()
time = isBreak ? 300 : 1500
}
}

