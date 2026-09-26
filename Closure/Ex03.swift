import Playgrounds

#Playground {

//  클로저 기본 문법
    
//    { (매개변수1: 타입1, 매개변수2: 타입2, ...) -> 반환타입 in
//        // 클로저의 코드 블록
//    }
    
    
    
    // 1. 반환값이 없는 함수
        // 1-1. 인자 0
        func sayHello() {
            print("안녕하세요!")
        }
        let sayHelloclosure = {
            print("안녕하세요!")
        }

        // 1-2. 인자가 1
        func greet(name: String) {
            print("안녕하세요, \(name)님!")
        }

        let greetClosure = { (name: String) in
            print("안녕하세요, \(name)님!")
        }

        // 1-3. 인자가 2
        func printSum(a: Int, b: Int) {
            print(a + b)
        }
        let printSumClosure = { (a: Int, b: Int) in
            print(a + b)
        }
    
    
    // 2. 반환값이 있는 함수 (인자 2)
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
    let addClosure = { (a: Int, b: Int) -> Int in
        return a + b
    }

    

    // 1-output
    sayHello()
    sayHelloclosure()
    greet(name: "최강호")
    greetClosure("최강호")        // name: X
    printSum(a: 3, b: 7)
    printSumClosure(7, 6)       // a: b: X
    
    // 2-output
    print(add(a: 30, b: 78))
    print(addClosure(46, 14))   // a: b: X
}
