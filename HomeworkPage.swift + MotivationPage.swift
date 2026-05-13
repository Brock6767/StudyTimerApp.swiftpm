import SwiftUI

// MARK: HOMEWORK

struct HomeworkPage: View {

    @State var homework: [String] = []
    @State var input = ""

    var body: some View {

        NavigationView {

            VStack {

                HStack {

                    TextField("Add homework", text: $input)
                        .textFieldStyle(.roundedBorder)

                    Button("Add") {

                        if !input.isEmpty {
                            homework.append(input)
                            input = ""
                        }
                    }
                }
                .padding()

                List {
                    ForEach(homework, id: \.self) { item in
                        Text(item)
                    }
                }
            }
            .navigationTitle("Homework")
        }
    }
}

// MARK: MOTIVATION

struct MotivationPage: View {

    let quotes = [
        "Focus on what matters",
        "Small steps every day",
        "Consistency wins",
        "Do it now",
        "Keep going"
    ]

    @State var quote = "Focus on what matters"

    var body: some View {

        VStack(spacing: 24) {

            Text("Focus")
                .font(.title2)

            Text(quote)
                .multilineTextAlignment(.center)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray6))
                .cornerRadius(16)
                .padding(.horizontal)

            Button("New quote") {
                quote = quotes.randomElement() ?? ""
            }
            .buttonStyle(.bordered)
        }
        .padding(.top, 40)
    }
}

