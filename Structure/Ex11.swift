import Playgrounds

#Playground {
    
    // 계산속성(get, set)
    
    struct Temperature {
        var celsius: Double

        var fahrenheit: Double {
            // 'get': fahrenheit를 읽으려고 할 때, celsius를 기반으로 계산하여 반환
            get {
                return (celsius * 1.8) + 32
            }
            // 'set': fahrenheit에 새로운 값을 할당할 때,
            // 그 값을 기반으로 celsius 값을 역으로 계산하여 업데이트
            set(newFahrenheit) {
                celsius = (newFahrenheit - 32) / 1.8
            }
        }
    }

    // --- 테스트 코드 ---
    var temp = Temperature(celsius: 25.0)
    print("섭씨 \\(temp.celsius)°C는 화씨 \\(temp.fahrenheit)°F 입니다.")

    temp.fahrenheit = 32.0
    print("화씨 온도를 32°F로 설정했습니다.")

    print("새로운 섭씨 온도는 \\(temp.celsius)°C 입니다.")
}
