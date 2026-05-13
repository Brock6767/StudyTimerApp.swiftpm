import SwiftUI

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
