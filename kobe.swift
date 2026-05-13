import SwiftUI

struct StreakView: View {

    @State var streak = 0

    var body: some View {

        VStack(spacing: 30) {

            Text("Study Streak")
                .font(.largeTitle)

            Text("🔥 \(streak) Days")
                .font(.system(size: 45))

            Button("I Studied Today") {
                streak += 1
            }
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(10)

            Button("Reset Streak") {
                streak = 0
            }
            .padding()
        }
    }
}
