import Playgrounds

#Playground {
    
    struct Point {
        var x: Double
        var y: Double

        init(x: Double, y: Double) {
            self.x = x
            self.y = y
        }
    }

    var point1 = Point(x: 0, y: 0)
    var point2 = point1

    point1.x = 100

    print("point1: (\(point1.x), \(point1.y))")
    print("point2: (\(point2.x), \(point2.y))")
}
