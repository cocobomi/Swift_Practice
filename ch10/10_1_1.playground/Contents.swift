import UIKit

/*
//저장 프로퍼티의 선언 및 인스턴스 생성
struct CoordinatePoint {
    var x: Int //저장 프로퍼티
    var y: Int //저장 프로퍼티
}

//구조체에는 기본적으로 저장 프로퍼티를 매개변수로 갖는 이니셜라이저가 있습니다.
let yagomPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 5)


//사람의 위치 정보
class Position {
    var point: CoordinatePoint //저장 프로퍼티(변수) - 위치는 변경될 수 있음을 뜻함
    let name: String //저장 프로퍼티(상수)

//프로퍼티 가본값을 지정해주지 않는다면 이니셜라이저를 따로 정의해주어야 한다.
    init(name: String, currentPoint: CoordinatePoint) {
        self.name = name
        self.point = currentPoint
    }
}

//사용자 정의 이니셜라이저를 호출해야만 한다. 그렇지 않으면 프로퍼티 초깃값을 할당할 수 없기 때문에 인스턴스 생성이 불가능하다.
let yagomPosition: Position = Position(name: "yagom", currentPoint: yagomPoint)
*/


/*
//저장 프로퍼티의 초기값 지정
struct CoordinatePoint {
    var x: Int = 0 //저장 프로퍼티
    var y: Int = 0 //저장 프로퍼티
}

//프로퍼티의 초깃값을 할당했다면 굳이 전달인자로 초깃값을 넘길 필요가 없습니다.
let yagomPoint: CoordinatePoint = CoordinatePoint()

//물론 기존에 초깃값을 할당할 수 있는 이니셜라이저도 사용 가능합니다.
let wizplanPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 5)

print("yagom's point: \(yagomPoint.x), \(yagomPoint.y)")
//yagom's point: 0, 0

print("wizplan's point: \(wizplanPoint.x), \(wizplanPoint.y)")
//wizplan's point : 10, 5
//사람의 위치 정보
class Position {
    var point: CoordinatePoint = CoordinatePoint() //저장 프로퍼티
    var name: String = "Unknown"
}

//초깃값을 지정해줬다면 사용자 정의 이니셜라이저를 사용하지 않아도 됩니다.
let yagomPosition: Position = Position()

yagomPosition.point = yagomPoint
yagomPosition.name = "yagom"
*/





//옵셔널 저장 프로퍼티
struct CoordinatePoint {
    var x: Int
    var y: Int
}

class Position {
    var point: CoordinatePoint?
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

//이름은 필수지만 위치는 모를 수 있다.
let yagomPosition: Position = Position(name: "yagom")

//위치를 알게되면 그 때 위치 값을 할당해준다
yagomPosition.point = CoordinatePoint(x: 20, y: 10)

