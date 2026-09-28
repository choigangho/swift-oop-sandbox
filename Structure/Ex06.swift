import Playgrounds

#Playground {

// 구조체 핵심 요소

//    - 프로퍼티 (Property: 속성): 구조체의 데이터를 저장하는 변수나 상수입니다. (이름, 나이, 색상 등)
//    - 메서드 (Method: 기능): 구조체가 수행할 수 있는 동작을 정의한 함수입니다. (걷기, 말하기, 계산하기 등)


    struct Person {
        var name: String
        var age: Int
        
        func sayHello() {
            print("안녕하세요, 저는 \(age)살 \(name)입니다.")
        }
        
        mutating func haveBirthday() {  // mutating: 구조체 프로퍼티 값 변경 시에
            age += 1
        }
    }
    
    var person1 = Person(name: "최강호", age: 25)
    
    person1.sayHello()
    person1.haveBirthday()
    person1.sayHello()
    
}
