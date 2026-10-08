import Playgrounds

/*
### 문제: `String` 타입에 새로운 출력 메서드 추가하기

Swift의 기본 문자열 타입인 `String`에, 항상 "출력 결과: "라는 말을 앞에 붙여 출력해주는 `newPrint()` 메서드를 익스텐션으로 추가해 보세요.

- `newPrint()` 메서드는 아무것도 반환(`return`)하지 않고, 콘솔에 결과만 출력합니다.
*/

// TODO: 여기에 String 타입을 확장하는 코드를 작성하세요.
extension String {
    func newPrint() {
        print("출력 결과: \(self)")
    }
}

#Playground {
    // --- 테스트 코드 ---
    // 아래 코드가 오류 없이 동작하고, 예상 결과처럼 출력되어야 합니다.
    
//  let myLog = String.init("서버 접속 성공")
    let myLog = "서버 접속 성공"
    
    myLog.newPrint()
}
