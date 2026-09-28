import Playgrounds

#Playground {
    
    // 1. Person이라는 '틀'(구조체) 정의
    struct Person {
        var name: String
        var job: String
    }

    // 2. Person 틀을 사용해 '실체'(인스턴스) 생성
    let person1 = Person(name: "아이유", job: "가수")
    let person2 = Person(name: "공유", job: "배우")

    // 3. 각 인스턴스의 프로퍼티에 접근하여 사용
    print("\(person1.name)님의 직업은 \(person1.job)입니다.")
    print("\(person2.name)님의 직업은 \(person2.job)입니다.")

}
