import UIKit

/*
 구조체와 클래스의 같은점
 
 값을 저장하기 위해 프로퍼티를 정의할 수 있다
 기능 실행을 위해 메서드를 정의할 수 있다
 서브스크립트 문법을 통해 구조체 또는 클래스가 갖고 있는 값에 접근하도록 서브스크립트를 정의할 수 있다.
 초기화될 때의 상태를 저장하기 위해 이니셜라이저를 정의할 수 있다.
 초기구현과 더불어 새로운 기능 추가를 위해 익스텐션을 통해 확장할 수 있다.
 특정 기능을 실행하기 위해 특정 프로토콜을 준수할 수 있다.
 
 
 구조체와 클래스의 다른점
 
 구조체는 값 타입(전달인자로 값 타입을 넘긴다면 전달될 값이 복사되어 전달됨)
 클래스는 참조 타입(전달인자로 전달될 때는 값을 복사하지 않고 참조(주소)가 전달됨)
 */

struct BasicInformation {
    let name: String
    var age: Int
}

var yagomInfo: BasicInformation = BasicInformation(name: "yagom", age: 99)
yagomInfo.age = 100

//yagomInfo의 값을 복사하여 할당한다
var friendInfo: BasicInformation = yagomInfo

print("yagom's age: \(yagomInfo.age)")
print("friend's age: \(friendInfo)")

friendInfo.age = 999

print("yagom's age: \(yagomInfo.age)")
print("friend's age: \(friendInfo.age)")

class Person {
    var height: Float = 0.0
    var wight: Float = 0.0
}

var yagom: Person = Person()
var friend: Person = yagom

print("yagom's height: \(yagom.height)")
print("friend's height: \(friend.height)")

friend.height = 185.5
print("yagom's height: \(yagom.height)")

print("friend's height: \(friend.height)")

func changeBasicInfo(_ info: BasicInformation) {
    var copiedInfo: BasicInformation = info
    copiedInfo.age = 1
}
func changePersonInfo(_ info: Person) {
    info.height = 155.3
}

changeBasicInfo(yagomInfo)
print("yagom's age: \(yagomInfo.age)")

changePersonInfo(yagom)
print("yagom's height: \(yagom.height)")


/*
 클래스의 인스턴스끼리 참조가 같은지 확일할 때는 식별 연산자를 사용함
 
 var yagom: Person = Person()
 let frined: Person = yagom
 let anotherFriend: Person = Person()
 
 print(yagom === friend) //true
 print(yagom === anotherFriend) //false
 print(friend !== anotherFriend) //true
 */
