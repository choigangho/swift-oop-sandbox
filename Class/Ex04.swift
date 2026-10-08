import Playgrounds

#Playground {
    
"""
### 문제2: `Vehicle`을 상속받아 `Motorcycle` 클래스 만들기

모든 탈것의 기본 정보를 담은 `Vehicle`(탈것) 부모 클래스가 있습니다. 이 클래스를 상속받아, 다음 조건을 만족하는 `Motorcycle`(오토바이) 자식 클래스를 만들어 보세요.

**요구사항:**

1. `Vehicle` 클래스를 상속받아야 합니다.
2. 오토바이의 사이드카 유무를 저장하는 `hasSidecar` 프로퍼티를 새로 추가하세요. (`Bool` 타입)
3. `Motorcycle`의 생성자(`init`)는 `brand`(브랜드)와 `hasSidecar` 두 가지만 매개변수로 받도록 만드세요.
4. 오토바이의 **바퀴 수(`numberOfWheels`)는 항상 `2`** 입니다. 생성자 안에서 부모의 `init`을 호출할 때 이 고정값을 사용해야 합니다.
"""
    
    // 부모 클래스
    class Vehicle {
        var brand: String // 브랜드
        var numberOfWheels: Int // 바퀴 수

        init(brand: String, numberOfWheels: Int) {
            self.brand = brand
            self.numberOfWheels = numberOfWheels
        }
    }

    // TODO: 여기에 Motorcycle 클래스를 만드세요.
    class Motorcycle: Vehicle {
        var hasSidecar: Bool
        
        init(brand: String, hasSidecar: Bool) {
            self.hasSidecar = hasSidecar
            // brand, numberOfWheels
            super.init(brand: brand, numberOfWheels: 2)
        }
    }

    // --- 테스트 코드 ---
    // 아래 코드가 오류 없이 동작하고, 예상 결과처럼 출력되어야 합니다.
    let myBike = Motorcycle(brand: "할리데이비슨", hasSidecar: false)
    print("브랜드: \(myBike.brand)")
    print("바퀴 수: \(myBike.numberOfWheels)")
    if myBike.hasSidecar {
        print("이 오토바이에는 사이드카가 있습니다.")
    } else {
        print("이 오토바이에는 사이드카가 없습니다.")
    }
}
