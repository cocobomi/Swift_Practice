import UIKit

//매개변수가 없는 함수 정의와 사용

func helloWorld() -> String {
    return "Hello World!"
}

print(helloWorld())


//매개변수가 여러 개인 함수의 정의와 사용
func sayHello(myName: String, yourName: String) -> String {
    return "Hello \(yourName)! I'm \(myName)"
}

print(sayHello(myName: "yagom", yourName: "Jenny"))

//매개변수 이름과 전달인자 레이블
/*
 func 함수 이름(전달인자 레이블 매개변수 이름: 매개변수 타입, 전달인자 레이블 매개변수 이름: 매개변수 타입...) -> 반환 타입 {
    실행 구문
    return 반환 값
 }
 */

//from과 to라는 전달인자 레이블이 있으며, maName과 name이라는 매개변수 이름이 있는 sayHello 함수
/*
func sayHello(from myName: String, to name:String) -> String {
    return "Hello \(name)! I'm \(myName)"
}

print(sayHello(from: "yagom", to: "Jenny"))

//전달인자 레이블을 사용하고 싶지 않으면 와일드카드 식별자를 사용(_)


func sayHello(_ name: String, _ times: Int) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    
    return result
}

print(sayHello("Chope", 2))
*/


//전달인자 레이블을 변경하면 함수의 이름 자체가 변경된다 따라서 전달인자 레이블만 다르게 써주더라도 함수 중복 정의(오버로드)로 동작할 수 있다.
func sayHello(to name: String, _ times: Int) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    
    return result
}

func sayHello(to name: String, repeatCount times: Int) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    
    return result
}

print(sayHello(to: "Chope", 2))
print(sayHello(to: "Chope", repeatCount: 2))
//sayHello 함수가 전달인자 레이블의 변경으로 중복 정의된 걸 확인할 수 있다.


//매개변수 기본값
func sayHello(_ name: String, times: Int = 3) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    
    return result
}

print(sayHello("Hana")) //times 매개변수의 전달 값을 넘겨주지 않아 기본값 3을 반영하여 세 번 출력됨
print(sayHello("Joe", times: 2)) // times 매개변수의 전달 값을 2로 넘겨주었기 때문에 두 번 출력됨


//가변 매개변수(매개변수로 몇 개의 값이 들어올지 모를 때 가변 매개변수 사용, 들어온 인자 값은 배열처럼 사용가능, 함수마다 가변 매개변수는 하나만 가질 수 있다)
func sayHelloToFriends(me: String, friends names: String...) -> String {
    var result: String = ""
    
    for friend in names {
        result += "Hello \(friend)!" + " "
    }
    result += "I'm " + me + "!"
    return result
}

print(sayHelloToFriends(me: "", friends: "Johansson", "Jay", "Wizplan"))

print(sayHelloToFriends(me: "yagom"))


//입출력 매개변수(함수의 전달인자로 값을 전달할 때는 보통 값을 복사해서 전달하지만 입출력 매개변수를 사용하면 값이 아닌 참조*를 전달한다. 참조를 전달인자로 보내면 함수 내부에서 참조하여 원래 값을 변경한다.)
var numbers: [Int] = [1, 2, 3]

func nonReferenceParameter(_ arr: [Int]) {
    var copiedArr: [Int] = arr
    copiedArr[1] = 1
}

func referenceparameter(_ arr: inout [Int]) {
    arr[1] = 1
}

nonReferenceParameter(numbers)
print(numbers[1])

referenceparameter(&numbers)
print(numbers[1])







