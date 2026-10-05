import Playgrounds

#Playground {
    
    // 계산속성(get)
    
    struct PiggyBank {
        var count100: Int // 100원짜리 동전 개수
        var count500: Int // 500원짜리 동전 개수
        
        // 여기에 'totalAmount' 계산 속성을 추가하세요.
        var totalAmount: Int {
            return (count100 * 100) + (count500 * 500)
        }
    }
    
    // --- 테스트 코드 ---
    // 아래 코드가 오류 없이 동작하고, 예상 결과처럼 출력되어야 합니다.
    let myPiggyBank = PiggyBank(count100: 15, count500: 4) // 100원 15개, 500원 4개
    print("내 저금통의 총액: \(myPiggyBank.totalAmount)원")
}
