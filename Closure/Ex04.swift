import Playgrounds

#Playground {

// 클로저의 타입 생략
    
    
    let array = [1, 2, 3, 4, 5]
    
    // 1. 매개변수 타입 생략
    // 타입 생략 (array --> Swift 타입추론 --> item: int)
    array.forEach({ item in
        print(item)
    })
    print(String(repeating: "=", count: 10))

    // 타입 명시 (item: type)
    array.forEach({ (item: Int) in
        print(item)
    })
    print(String(repeating: "=", count: 10))
    
    // 2. 반환 타입 생략
    // 매개변수 타입, 반환 타입 생략
    let doubledArray = array.map({ item in
        return item * 2
    })
    print(doubledArray)
    print(String(repeating: "=", count: 10))
    
    // 매개변수 타입, 반환 타입 명시
    let explicitDoubledArray = array.map({ (item: Int) -> Int in
        return item * 2
    })
    print(explicitDoubledArray)
    
    

}
