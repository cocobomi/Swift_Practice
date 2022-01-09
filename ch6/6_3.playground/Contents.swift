import UIKit

//구문 이름표(반복문을 사용하다보면 중첩 반복문을 사용할 때가 있는데 break나 continue 등 제어 키를 어떤 범위에 적용되어야 하는지 애매하거나 큰 밤위의 반복문을 종료하고 싶은데 작은 범위의 반복문만 종료되는 등 예상치 못한 실수를 할 수도 있다. 그럴 때는 반목문 앞에 이름과 함께 콜론을 붙여 구문의 이름을 지정해주는 구문이름표를 사용해 주면 좋다. 이름이 지정된 구문을 제어하고자 할 때는 제어 키워드와 구문 이름을 함께 써주면 된다.)

var numbers: [Int] = [3, 2342, 6, 3452]

numbersLoop: for num in numbers {
    if num > 5 || num < 1{
        continue numbersLoop
    }
    
    var count: Int = 0
    
printLoop: while true {
    print(num)
    count += 1
    
    if count == num {
        break printLoop
    }
}
    
removeLoop: while true {
    if numbers.first != num {
        break numbersLoop
    }
    numbers.removeFirst()
    }
}

