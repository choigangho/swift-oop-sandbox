import SwiftUI

struct ContentView: View {
    @State private var message = "버튼을 눌러주세요."

    func functionAction() {
        self.message = "함수 호출로 메시지가 변경되었습니다! 🚀"
    }

    var body: some View {
        VStack(spacing: 20) {
            Text(message)
                .frame(width: 400)
                .padding()

            //1. 함수로 정의된 액션을 버튼에 전달
            Button("함수 실행", action: functionAction)

            //2. 클로저를 버튼에 직접 전달
            Button("클로저 실행", action: {
                self.message = "클로저로 버튼이 클릭되었습니다! 👍"
            })
        }
    }
}

// ContentView를 플레이그라운드의 라이브 뷰로 설정합니다.
#Preview {
    ContentView()
}
