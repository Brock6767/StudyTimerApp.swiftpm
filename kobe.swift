import SwiftUI


struct MotivationalView: View {

let quotes = [
"Stay focused.",
"Small progress is still progress.",
"You got this.",
"Keep studying.",
"One step at a time."
]
    @State var randomQuote = "Stay focused."

    var body: some View {
    VStack(spacing: 30) {

    Text("Motivation")
    .font(.largeTitle)

    Text(randomQuote)
    .font(.title2)
    .multilineTextAlignment(.center)
    .padding()

    Button("New Quote") {
    randomQuote = quotes.randomElement() ?? "Keep going."
    }
    .padding()
    }
    }
    }



