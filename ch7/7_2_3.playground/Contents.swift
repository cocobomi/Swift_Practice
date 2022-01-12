import UIKit

//반환이 없는 함수(함수는 연산을 실행한 후 값을 반환하지만, 반환이 필요하지 않는 함수도 있다. 반환 값이 없는 함수를 만들어 주려면 반환타입 없음을 의미하는 void로 표기하거나 아예 반환 타입 표현을 생략해도 된다.)
func sayHelloWorld() {
    print("Hello, World!")
}
sayHelloWorld()

func sayHello(from myName: String, to name: String) {
    print("Hello \(name)! I'm \(myName)")
}
sayHello(from: "yagom", to: "Mijeong")

func sayGoodbye() -> Void {
    print("Good bye")
}
sayGoodbye()
