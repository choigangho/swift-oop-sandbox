import Playgrounds

#Playground {
    
    // init(생성자)
    
    struct CartItem {
        // 기본값이 없는 저장 속성
        var name: String
        var totalPrice: Int
        
        init(name: String, price: Int, quantity: Int) {
            self.name = name
            self.totalPrice = price * quantity
        }
    }

    let item = CartItem(name: "무선 키보드", price: 35000, quantity: 2)
    
    print("상품명: \(item.name)")
    print("총 금액: \(item.totalPrice)원")
}
