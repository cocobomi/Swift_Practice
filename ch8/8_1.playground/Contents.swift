import UIKit

//옵셔널 사용(옵셔널이란 변수나 상수에 꼭 값이 있다는 것을 보장할 수 없다. 즉, 변수 또는 상수의 값이 nil* 일 수도 있다는 것을 의미)
//테이터 타입 뒤에 물음표(?)를 붙여 표현함

/*
//오류가 발생하는 nil 할당
var myName: String = "yagom"
myName = nil
*/

var myName: String? = "yagom"
print(myName)

myName = nil

print(myName)

