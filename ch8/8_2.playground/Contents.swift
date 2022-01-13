import UIKit

//옵셔널 추출 - 강제 추출(간단하지만 가장 위험한 방법, 옵셔널 값의 뒤에 느낌포를 붙여주면 강제로 추출하여 반환해줌 만약 강제추출시 값이 없다면(nil이라면) 런타임 오류가 발생함)
/*
var myName: String? = "yagom"

var yagom: String = myName!

myName = nil
yagom = myName!

if myName != nil {
    print("My name is \(myName!)")
} else {
    print("myName == nil")
}
*/

//옵셔널 바인딩(옵셔널에 값이 있는지 확인할 때 사용됨, 만약 값이 있다면 옵셔널에서 추출한 값을 일정 블록 안에서 사용할 수 있는 상수나 변수로 할당해서 옵셔널이 아닌 형태로 사용할 수 있도록 해준다.)
var myName: String? = "yagom"

if let name = myName {
    print("My name is \(name)")
} else {
    print("myName == nil")
}

if var name = myName {
    name = "wizplan"
    print("My name is \(name)")
} else {
    print("myName == nil")
}
//name을 두번 사용했지만 충돌이 일어나지 않은 이유는 if구문을 실행하는 블록안쪽에서만 name이라는 임시상수를 사용할 수 있기 때문. else에서도 못사용함.

