import SwiftUI

// 후행 클로저 실제 예시(SwiftUI에서 버튼)

struct ContentView: View {
    @State private var message = "버튼을 눌러주세요."

    var body: some View {
        VStack(spacing: 20) {
            Text(message)
                .padding()
            
//            후행 클로저 변경
            
//            Button("메시지 변경", action: {
//                self.message = "버튼이 클릭되었습니다! 👍"
//            })

            Button("메시지 변경") {self.message = "버튼이 클릭되었습니다! 👍"}
        }
    }
}

#Preview {
    ContentView()
}
