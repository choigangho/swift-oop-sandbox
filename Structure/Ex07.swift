import Playgrounds

#Playground {
    
    // array(배열)의 프로퍼티와 메서드
    var array = [1, 2, 3, 4, 5]
    
    array.count
    array.isEmpty
    array.first
    array.last
    array.append(6)
    array.shuffle()
    print("셔플 후", array)
    array.sort()
    print("정렬 후", array)
    
    
    // Animal 구조체 만들기
    struct Animal {
        let name: String
        
        func sayHello() {
            print("안녕? 난 \(name)이야!")
        }
    }
    
    let myPet = Animal(name: "고양이")
    myPet.sayHello()
    
    
}
