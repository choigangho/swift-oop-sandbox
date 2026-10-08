import Playgrounds

#Playground {
    
    // 1. 부모 클래스: Animal
    class Animal {
        var name: String

        init(name: String) {
            self.name = name
        }

        func makeSound() {
            print("...") // 일반적인 동물의 소리
        }
    }

    // 2. 자식 클래스: Dog (Animal을 상속)
    class Dog: Animal {
        // Dog만의 새로운 프로퍼티 추가
        var breed: String

        // 새로운 프로퍼티를 초기화하기 위한 생성자
        init(name: String, breed: String) {
            self.breed = breed // 1. 자식 클래스의 프로퍼티 먼저 초기화
            super.init(name: name)  // 2. 부모 클래스의 생성자 호출
        }

        // 부모의 makeSound()를 재정의(Override)
        override func makeSound() {
            print("멍멍!")
        }

        // Dog만의 새로운 메서드 추가
        func wagTail() {
            print("\(name)이(가) 꼬리를 흔듭니다.")
        }
    }

    // 3. 자식 클래스: Cat (Animal을 상속)
    class Cat: Animal {
        // Cat만의 새로운 프로퍼티 추가
        var isIndoor: Bool

        // 새로운 프로퍼티를 초기화하기 위한 생성자
        init(name: String, isIndoor: Bool) {
            self.isIndoor = isIndoor // 1. 자식 클래스의 프로퍼티 먼저 초기화
            super.init(name: name)   // 2. 부모 클래스의 생성자 호출
        }

        // 부모의 makeSound()를 재정의(Override)
        override func makeSound() {
            print("야옹~")
        }
    }

    // --- 실행 코드 ---
    // 새로운 생성자를 사용하여 인스턴스 생성
    let myDog = Dog(name: "뽀삐", breed: "말티즈")
    let myCat = Cat(name: "나비", isIndoor: true)

    // 재정의된 메서드 호출
    myDog.makeSound() // "멍멍!"
    myCat.makeSound() // "야옹~"

    // 자식만의 고유 메서드 및 프로퍼티 사용
    myDog.wagTail()
    
    print("\(myDog.name)의 품종은 \(myDog.breed)입니다.")

    if myCat.isIndoor {
        print("\(myCat.name)는 실내에서 생활하는 고양이입니다.")
    }
}
