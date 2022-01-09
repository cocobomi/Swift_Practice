import UIKit

//repeat-while 구문(다른 프로그래밍 언어의 do-while 구문과 크게 다르지 않다, repeat 블록의 코드를 1회 실행한 후, while 다음의 조건이 성립하면 블록 내부의 코드를 반복 실행한다.)

var names: [String] = ["John", "Jenny", "Joe", "yagom"]

repeat {
    print("Good bye \(names.removeFirst())")
} while names.isEmpty == false

