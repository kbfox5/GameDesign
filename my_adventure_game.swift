import SwiftUI
struct ContentView: View {
    // Game state
    @State private var currentStep = "start"
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            switch currentStep {
            case "start":
                Text("you wake up in your dorm")
                    .multilineTextAlignment(.center)
                HStack {
                    gameButton("go to bathroom") {
                        currentStep = "bathroom"
                    }
                    gameButton("go to breakfast") {
                        currentStep = "breakfast"
                    }
                }
            case "bathroom":
                Text("ready for the day, good job!")
                    .multilineTextAlignment(.center)
                VStack {
                    gameButton("finish the day!!") {
                        currentStep = "start"
                    }
                }
            case "breakfast":
                Text("skiped geting ready")
                VStack {
                    gameButton("🥐develop unhealthy eating habits🤦‍♂️") {
                        currentStep = "obesity"
                    }
                    gameButton("burn calories") {
                        currentStep = "become fit"
                    }
                }
            case "obesity":
                Text("🙂‍↔️become obese🤦‍♂️")
                gameButton("start again") {
                    currentStep = "start"
                }
            case "become fit":
                Text("Fit and healthy, goodjob")
                gameButton("start again") {
                    currentStep = "start"
                }


            default:
                Text("Game Over.")
            }
            Spacer()
        }
        .padding()
        .font(.title3)
    }
    // Reusable styled button
    func gameButton(_ label: String, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Text(label)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue.opacity(0.8))
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}
#Preview {
    ContentView()
}

