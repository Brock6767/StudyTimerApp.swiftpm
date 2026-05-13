import SwiftUI

struct HistoryPage: View {

    @Binding var history: [String]

    var body: some View {

        NavigationView {

            List {

                if history.isEmpty {
                    Text("No sessions yet")
                        .foregroundColor(.secondary)
                } else {
                    ForEach(history, id: \.self) { item in
                        Text(item)
                    }
                }
            }
            .navigationTitle("History")
        }
    }
}
