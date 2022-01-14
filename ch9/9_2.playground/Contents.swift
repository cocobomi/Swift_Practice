import UIKit

//클래스(class) - 구조체와는 달리 let으로 선언해도 내부 프로퍼티 값을 변경가능

/*
 class 클래스 이름 {
    프로퍼티와 메서드
 }
 
 class 클래스 이름: 부모클래스 이름 {
    프로퍼티와 메서드
 }
 */

/*
class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}

var yagom: Person = Person()
yagom.height = 123.4
yagom.weight = 123.4

let jenny: Person = Person()
jenny.height = 123.4
jenny.weight = 123.4
*/

//클래스 인스턴스 생성 및 소멸(클래스의 인스턴스는 참조 타입이므로 더는 참조할 필요가 없을 떼 메모리에서 해제됨. 이 과정을 소멸이라하며 소멸되기 직전 deinit라는 메서드가 호출됨
class Person {
    var height: Float = 0.0
    var weight: Float = 0.0


    deinit {
        print("Person 클래스의 인스턴스가 소멸됩니다.")
    }
}

var yagom: Person? = Person()
yagom = nil //Person 클래스의 인스턴스가 소멸됨
