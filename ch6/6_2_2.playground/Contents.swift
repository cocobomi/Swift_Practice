import UIKit

//while 구문(Bool타입으로 지정되어야 함)
var names: [String] = ["Joker", "Jenny", "Nova", "yagom"]

while names.isEmpty == false {
    print("Good bye \(names.removeFirst())")
}

