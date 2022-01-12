import UIKit

//반환 값을 무시할 수 있는 함수

func say(_ something: String) -> String {
    print(something)
    return something
}

@discardableResult func discadableResultSay(_ something: String) -> String {
    print(something)
    return something
}

say("hello")

discadableResultSay("hello")
