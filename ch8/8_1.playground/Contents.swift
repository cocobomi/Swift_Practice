import UIKit
import Darwin

//옵셔널 사용(옵셔널이란 변수나 상수에 꼭 값이 있다는 것을 보장할 수 없다. 즉, 변수 또는 상수의 값이 nil* 일 수도 있다는 것을 의미)
//테이터 타입 뒤에 물음표(?)를 붙여 표현함

/*
//오류가 발생하는 nil 할당
var myName: String = "yagom"
myName = nil
*/

/*
var myName: String? = "yagom"
print(myName)

myName = nil

print(myName)
*/
//스위프트에서 매개변수가 옵셔널일 때는 매개변수 값이 없어도 되는구나 라는 것을 알아야한다.

//원시 값을 통한 열거형 초기화
/*
let primary = School(rawValue: "유치원")
let graduate = School(rawValue: "석박사")

let one = Numbers(rawValue: 1)
let three = Numbers(rawValue: 3)
 */


//옵셔널 자체가 열거형이기 때문에 switch 구문을 톨해 값이 있고 없을을 알 수 있다.
let numbers: [Int?] = [2, nil, -4, nil, 100]

for number in numbers {
    switch number {
    case .some(let value) where value < 0:
        print("Negative value!! \(value)")
    case .some(let value) where value > 10:
        print("Large value!! \(value)")
        
    case .some(let value):
        print("Value \(value)")
        
    case .none:
        print("nil")
    }
}
