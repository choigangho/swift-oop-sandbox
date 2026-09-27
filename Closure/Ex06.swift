import Playgrounds

#Playground {

// 연습
    
    
    
    // 함수 -> 클로저
    """
    func greet(name: String) -> String {
      return "안녕하세요, \\(name)님!"
    }

    let greeting = greet(name: "지미니")
    print(greeting) // 출력: 안녕하세요, 지미니님!
    """
    let greet: (String) -> String = {"안녕하세요, \($0)님!"}
    
    let greeting = greet("지미니")
    print(greeting) // 출력: 안녕하세요, 지미니님!
    
    
    """
    func doubleFunction(number: Int) -> Int {
      return number * 2
    }

    let array = [1, 2, 3, 4, 5]

    // doubleFunction 함수를 map의 인자로 전달
    let doubledArray = array.map(doubleFunction)
    print(doubledArray) // 출력: [2, 4, 6, 8, 10]
    """
    let array = [1, 2, 3, 4, 5]

    // doubleFunction 함수를 map의 인자로 전달
    let doubledArray = array.map({ $0 * 2 })
    print(doubledArray) // 출력: [2, 4, 6, 8, 10]
    
    
    """
    let array3 = [1, 2, 3, 4, 5]
    let doubledArray3 = array3.map ({ (number: Int) -> Int in
        return number * 2
    })
    """
    let array3 = [1, 2, 3, 4, 5]
    
    let doubledArray3 = array3.map({$0 * 4})
    print(doubledArray3)
    
}
