import Playgrounds

#Playground {
    
    // self
    
    struct Person1 {
        var name: String
        var job: String

        // '동작'을 정의하는 메서드
        func describe() {
            // 이 메서드를 호출한 인스턴스 '자기 자신'의 프로퍼티에 접근
            print("저는 \(self.job) \(self.name)입니다.")
        }
    }

    let person1 = Person1(name: "아이유", job: "가수")

    // person1 인스턴스의 describe 메서드를 호출
    // 이 순간, describe() 내부의 'self'는 'person1'이 됨
    person1.describe()
    
    
    
    
    struct Person2 {
        var name: String
        var job: String

        func describe() {
            // 여기서 self는 생략해도 됨
            print("저는 \(job) \(name)입니다.")
        }

        // 직업을 변경하는 메서드 (struct 내부 프로퍼티를 수정하므로 mutating 키워드 필요)
        mutating func changeJob(job: String) {
            // 여기서 self는 필수!!

            // self.job은 '인스턴스의 프로퍼티 job'을 의미합니다.
            // 그냥 job은 '메서드로 전달된 매개변수 job'을 의미합니다.
            self.job = job
        }
    }

    var person2 = Person2(name: "유재석", job: "코미디언")
    person2.describe()

    // "방송인"이라는 새로운 값을 가진 'job' 매개변수를 전달합니다.
    person2.changeJob(job: "방송인")
    person2.describe()
}
