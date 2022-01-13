import UIKit

//암시적 추출 옵셔널(nil을 할당하고 싶지만 매번 옵셔널 바인딩으로 값을 추출하기 귀찮거나 런타임 오류가 발생하지 않을 것 같다는 확신이 들때 암시적 추출 옵셔널을 사용하여 nil을 할당해 줄 수 있는 옵셔널이 아닌 변수나 상수를 제공. 단, 위험한 생각임, 사용법은 타입뒤에 느낌표를 사용하면 됨)
var myName: String! = "yagom"
print(myName)
myName = nil

//암시적 추출 옵셔널도 옵셔널이므로 당연히 바인딩을 사용할 수 있다.
if let name = myName {
    print("My name is \(name)")
} else {
    print("myName == nil")
}

myName.isEmpty //오류
