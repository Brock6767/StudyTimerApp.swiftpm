import SwiftUI

struct HistoryView: View {
@Binding var history: [String]

var body: some View {
VStack {
    Text("History")
    .font(.largeTitle)

    List(history, id: \ .self) { item in
    Text(item)
                }
            }
        }
    }

