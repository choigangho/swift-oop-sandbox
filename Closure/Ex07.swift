import Playgrounds

#Playground {
    
// 후행 클로저(Trailing Closure)

    
    
    let numbers = [1, 2, 3, 4, 5]

    // 클로저가 소괄호 안에 위치함
    let doubledNumbers_1 = numbers.map({ (number: Int) -> Int in
        return number * 2
    })

    print(doubledNumbers_1) // 출력: [2, 4, 6, 8, 10]


    // 후행 클로저를 적용한 경우
    // 클로저를 소괄호 밖으로 빼내어 작성
    let doubledNumbers_2 = numbers.map() { (number: Int) -> Int in
        return number * 2
    }

    // ()가 생략되면서 코드가 훨씬 자연스러워짐
    let doubledNumbers_3 = numbers.map { (number: Int) -> Int in
        return number * 2
    }
    
    print(doubledNumbers_3) // 출력: [2, 4, 6, 8, 10]
    
}
