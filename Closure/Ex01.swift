import Playgrounds

#Playground {
    
    // 함수
    let array = [1, 2, 3, 4, 5]

    func isGreaterThanTwo(number: Int) -> Bool {
        return number > 2
    }

    let filteredArray = array.filter(isGreaterThanTwo)
    print(filteredArray) // [3, 4, 5]
    
    
    // 클로저
    let array2 = [1, 2, 3, 4, 5]

    let filteredArray2 = array.filter({element in
        element > 2})
    print(filteredArray2) // [3, 4, 5]
    
}
