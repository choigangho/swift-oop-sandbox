import Playgrounds

class UserAccount {
    let userID: String
    var points: Int

    var rank: String {
        return points >= 100 ? "VIP" : "일반"
    }

    init(userID: String) {
        self.userID = userID
        self.points = 0
    }

    func earnPoints(amount: Int) {
        points += amount
        print("\(amount)포인트 적립! (현재: \(points)포인트, 등급: \(rank))")
    }
}

extension UserAccount {
    func minusPoints(amount: Int) {
        points -= amount
        print("\(amount)포인트 차감! (현재: \(points)포인트, 등급: \(rank))")
    }
}

#Playground {
    let user = UserAccount(userID: "0001")
    user.minusPoints(amount: 100)
}
