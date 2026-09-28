import Playgrounds

#Playground {
    
    // --- 첫 번째 사람의 정보 ---
    var person1_name = "아이유"
    var person1_job = "가수"
    var person1_height = 161.8
    
    // --- 두 번째 사람의 정보 ---
    var person2_name = "공유"
    var person2_job = "배우"
    var person2_height = 184.0
    
    // --- 세 번째 사람의 정보 ---
    var person3_name = "손흥민"
    var person3_job = "축구선수"
    var person3_height = 183.0
    
    // 컬렉션? -> 타입이 일관 X
    // 튜플?  -> 타입이 일관 상관없으나, 재사용성이 아쉬움
    // 스트럭쳐 -> 타입 일관 X, 재사용성 good, 유지보수 good
    
    func printPersonInfo(name: String, job: String, height: Double) {
        print("이름: \(name), 직업: \(job), 키: \(height)cm")
    }

    // --- 함수 호출 예시 ---
    // 첫 번째 사람의 '흩어져 있는' 데이터를 각각 함수에 전달
    printPersonInfo(name: person1_name, job: person1_job, height: person1_height)

    // 세 번째 사람의 데이터로 함수 호출
    printPersonInfo(name: person3_name, job: person3_job, height: person3_height)

}

