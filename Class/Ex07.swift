import Playgrounds

/*
### 문제: `String` 타입에 새로운 출력 메서드 추가하기

Swift의 기본 문자열 타입인 `String`에, 항상 "출력 결과: "라는 말을 앞에 붙여 출력해주는 `newPrint()` 메서드를 익스텐션으로 추가해 보세요.

- `newPrint()` 메서드는 아무것도 반환(`return`)하지 않고, 콘솔에 결과만 출력합니다.
*/

// TODO: 여기에 String 타입을 확장하는 코드를 작성하세요.
extension String {
    func newPrint() {
        print("출력 결과: \(self)") // 단독 self: newPrint() 지역의 지역 변수를 칭함 -> newPrint()에 아무 변수도 없는데? -> 25번 라인에서 호출
            
    }
}

#Playground {
    // --- 테스트 코드 ---
    // 아래 코드가 오류 없이 동작하고, 예상 결과처럼 출력되어야 합니다.
    
    //  let myLog = String.init("서버 접속 성공")     // 아래와 동일 (생략 버전)
    let myLog = "서버 접속 성공"
    myLog.newPrint() // . 이라는 멤버 접근 연산자를 통해 myLog("서버 접속 성공")가 newPrint()에 접근 -> 그럼 func newPrint() {} 는 () 공백이므로 변수를 안받는 다는 거 아님? -> 사실은 () 공백에 self: String 가 생략된 구조임
    
    /*
     
     func newPrint(self: String) {
     print("출력 결과: \(self)")
     
     */
}
  
    
"""
사실 진짜 명시 버전은 이럼
    
import Swift // 스위프트 표준 라이브러리 모듈 명시
import Playgrounds
 

extension Swift.String {
 // 접근 제어자, mutating 여부, 모듈명, 반환 타입을 생략 없이 명시
 internal nonmutating func newPrint() -> Swift.Void {
     Swift.print("출력 결과: \\(self)")
 }
}

#Playground {
// 1. 모듈명, 변수 타입, 이니셜라이저 형태를 모두 명시하여 인스턴스 생성
let myLog: Swift.String = Swift.String.init(stringLiteral: "서버 접속 성공")

// 2. 점(.) 호출 연산자 뒤에 숨겨진 메커니즘을 생략 없이 3단계로 분리

// [1단계] 타입(Swift.String)에서 '바인딩되지 않은 메서드' 참조를 가져옴
// 타입: (Swift.String) -> () -> Swift.Void
let unboundMethod: (Swift.String) -> () -> Swift.Void = Swift.String.newPrint

// [2단계] 인스턴스(myLog)를 self 매개변수로 직접 전달하여 메서드 바인딩
// 타입: () -> Swift.Void
let boundMethod: () -> Swift.Void = unboundMethod(myLog)

// [3단계] self가 결합된 최종 함수를 호출
boundMethod()
}

"""
