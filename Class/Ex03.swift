import Playgrounds

#Playground {
    
"""
### 문제1: `Person` 클래스를 상속받는 `Student` 클래스 만들기

`Person`이라는 부모 클래스가 있습니다. 이 클래스를 상속받아 자기소개를 바꾸는 `Student` 자식 클래스를 만들어 보세요.

**요구사항:**

1. `Person` 클래스를 상속받아 `Student` 클래스를 정의하세요.
2. `Person`의 `introduce()` 메서드를 "저는 학생입니다."라고 출력하도록 재정의(`Override`) 하세요.
"""
    
    // 부모 클래스
    class Person {
        func introduce() {
            print("저는 사람입니다.")
        }
    }

    // TODO: 여기에 Student 클래스를 만드세요.
    class Student: Person {
        override func introduce() {
            print("저는 학생입니다.")
        }
    }
    
    // --- 테스트 코드 ---
    // 아래 코드가 오류 없이 동작하고, 예상 결과처럼 출력되어야 합니다.
    let person = Person()
    let student = Student()

    person.introduce()
    student.introduce()
}
