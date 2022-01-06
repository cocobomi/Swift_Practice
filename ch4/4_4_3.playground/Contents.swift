import UIKit

//var names: Set<String> = Set<String>()
//var names: Set<String> = []

// Array와 마찬가지로 대괄호를 사용합니다.
var names: Set<String> = ["donghyeon", "chulsoo", "younghee", "donghyeon"]

// 그렇기 때문에 타입 추론을 사용하게 되면 컴파일러는 Set이 아닌 Array로 타입을 지정합니다.
var numbers = [100, 200, 300]
print(type(of: numbers))

print(names.isEmpty) //비어있는 세트인지 확인
print(names.count) //세트에 몇 개의 요소가 존재하는지 확인

names.insert("jenny") //세트에 요소 추가
print(names.count)

print(names.remove("chulsoo")) //리무브 매서드를 사용하면 해당 요소가 삭제된 후 반환됨
print(names.remove("john")) //없으므로 nil출력


