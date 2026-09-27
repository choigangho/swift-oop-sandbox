import SwiftUI

// 다중 후행 클로저 (Multiple Trailing Closures)

struct ContentView: View {
    var body: some View {
        // 다중 후행 클로저를 사용한 Button
        Button {
            // Action Closure: 첫 번째 클로저라 레이블이 없습니다.
            print("버튼이 탭되었습니다!")

        } label: {
            // Label Closure: 두 번째 클로저라 'label:' 레이블이 붙습니다.
            Image(systemName: "hand.thumbsup") // sf sybol
            Text("좋아요")
                .bold()
        }
        
        // 버튼 디자인
        .font(.title)
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        // 버튼 디자인
        
    }
}

#Preview {
    ContentView()
}
