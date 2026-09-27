import Playgrounds

#Playground {
    
// 클로저 리턴 생략, 단축 인자
    
    
    
    // 1. 리턴 생략
    
        // 1-1. 리턴 명시
        func add(a: Int, b: Int) -> Int {
            return a + b
        }

        let result = add(a: 1, b: 2)
        print(result) // 3
    
    
        // 1-2. 리턴 생략 (단일 표현식 - 한 줄)
        func add2(a: Int, b: Int) -> Int {
            a + b // 단일 표현식
        }

        let result2 = add2(a: 1, b: 2)
        print(result2) // 3
    
    
        // 1-3. 단계별 단축 형태
        let array = [1, 2, 3, 4, 5]

        // 생략이 없는 경우
        let doubled1 = array.map({ (number: Int) -> Int in
            return number * 2
        })

        // 생략 1단계, 인자, 반환 타입 생략
        let doubled2 = array.map({ number in
            return number * 2
        })

        // 생략 2단계, return 키워드 생략
        let doubled3 = array.map({ number in
            number * 2 // return 생략
        })

        // 생략 3단계, 매개변수 이름 생략 (단축 인자)
        let doubled4 = array.map({
            $0 * 2
        })
    
    
    // 2. 단축 인자
    
        """
        zip 함수는 두 배열의 요소들을 페어(pair)로 하여 새로운 시퀀스(sequence)를 생성합니다.
        예를 들어 [1, 2]와 ["A", "B"]를 zip하면 (1, "A"), (2, "B") 쌍이 만들어집니다.
        """
        let numbers = [1, 2, 3]
        let letters = ["A", "B", "C"]

        // zip으로 두 배열을 짝지은 후, map으로 새로운 문자열 배열 생성
        // $0은 numbers 배열의 요소(Int), $1은 letters 배열의 요소(String)를 가리킵니다.
        let combined = zip(numbers, letters).map {
            "\($1)-\($0)" // $1(문자)과 $0(숫자)을 조합하여 "A-1"과 같은 문자열 생성
        }

        print(combined) // ["A-1", "B-2", "C-3"]
    
    
}
