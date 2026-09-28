import Playgrounds

#Playground {
    
    // 구조체 정의
    struct Book {
        var title: String
        var author: String
        var price: Int
    }
    
    // 인스턴스 생성
    var book1 = Book(title: "Java의 정석", author: "남궁성", price: 38000)
    
    // 인스턴스 정보 출력
    print("제목:", book1.title)
    print("저자:", book1.author)
    print("가격: \(book1.price)원")
    
}
