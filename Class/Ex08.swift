import Playgrounds

extension String {
    // 실제 코드: 매개변수 목록 ()은 비워둡니다.
    // internal, nonmutating, -> Void는 생략 가능하며, self는 언어 차원에서 자동 공급됩니다.
    internal nonmutating func newPrint() -> Void {
        print("출력 결과: \(self)")
    }
}

#Playground {
    let myLog: String = String.init(stringLiteral: "서버 접속 성공")
    
    // 점(.) 연산자를 통해 myLog가 내부 self로 자동 전달됩니다.
    myLog.newPrint()
}
