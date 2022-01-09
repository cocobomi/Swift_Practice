import UIKit

/*조건문(스위프트는 조건문이 무조건 불리언 값이어야 한다,괄호는 생략가능 중괄호는 생략 불가능,
        내부의 else if 조건을 충족하면 뒤에 있는 else if 조건을 충족하더라도 실행되지 않고 조건문을 빠져나온다.
        else if는 몇 개가 있든 상관없음, If 단독으로 사용가능, 마지막 else 생략가능) */

let first: Int = 5
let second: Int = 7

if first > second {
    print("first > second")
} else if first < second {
    print("first < second")
} else {
    print("firsr == second")
}


