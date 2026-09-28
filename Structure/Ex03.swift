import Playgrounds

#Playground {

    // 1. '사람'을 표현하는 구조체 정의
    // 이름, 직업, 키라는 관련 데이터를 하나의 '틀'로 묶습니다.
    struct Person {     // 대문자 관례
        var name: String
        var job: String
        var height: Double
    }

    // 2. Person 구조체를 사용해 실제 인스턴스(실체) 생성
    // 인스턴스를 사용하기 위해 변수에 할당
    let person1 = Person(name: "아이유", job: "가수", height: 161.8)
    let person2 = Person(name: "공유", job: "배우", height: 184.0)
    let person3 = Person(name: "손흥민", job: "축구선수", height: 183.0)

    /**
     3. Person 구조체 자체를 파라미터로 받는 함수
      - Parameter data: Person 타입의 인스턴스
     */
    func printPersonInfo(data: Person) {
        // 전달받은 '덩어리(data)'에서 점(.)을 찍어 내부 데이터에 접근합니다.
        print("이름: \(data.name), 직업: \(data.job), 키: \(data.height)cm")
    }


    // --- 함수 호출 예시 ---
    // 이제 'person1'이라는 데이터 덩어리 하나만 전달하면 됩니다.
    print("--- 정보 출력 ---")
    printPersonInfo(data: person1)
    printPersonInfo(data: person2)
    printPersonInfo(data: person3)
    
}
