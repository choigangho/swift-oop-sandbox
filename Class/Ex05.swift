import Playgrounds

#Playground {
    
"""
### 문제3: 부모 생성자를 재정의하는 `ElectricCar` 클래스 만들기

`Vehicle`(탈것)이라는 부모 클래스가 있습니다. 이 클래스를 상속받아 다음 조건을 만족하는 `ElectricCar`(전기차) 자식 클래스를 만들어 보세요.

**요구사항:**

1. `Vehicle` 클래스를 상속받아야 합니다.
2. 전기차의 배터리 잔량을 저장하는 `batteryLevel` 프로퍼티를 새로 추가하고, **기본값을 `100`으로 설정**하세요.
3. 부모와 동일하게 `maxSpeed`만 받는 생성자를 **재정의(`Override`)** 하세요.
4. 생성자 내부에서 부모의 `init`을 호출한 후, "전기차가 출고되었습니다. 배터리는 100%입니다."라는 문구를 출력하세요.
"""
    
    // 부모 클래스
    class Vehicle {
        var maxSpeed: Int

        init(maxSpeed: Int) {
            self.maxSpeed = maxSpeed
        }
    }

    // TODO: 여기에 ElectricCar 클래스를 만드세요.
    class ElectricCar: Vehicle{
        var batteryLevel: Int = 100
        
        override init(maxSpeed: Int) {
            super.init(maxSpeed: maxSpeed)
            print("전기차가 출고되었습니다. 배터리는 100%입니다.")
        }
    }

    // --- 테스트 코드 ---
    // 아래 코드가 오류 없이 동작하고, 예상 결과처럼 출력되어야 합니다.
    let myCar = ElectricCar(maxSpeed: 200)
    print("최고 속도: \(myCar.maxSpeed)")
}
