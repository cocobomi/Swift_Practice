import UIKit

/*
 사용자 정의 연산자 (operator - 연산자를 뜻함, precedence - 우선순위를 뜻함)
 (전위 연산자 - prefix)
 prefix operator
 (후위 연산자 - postfix)
 postfix operator
 (중위 연산자 - infix) #우선순위 그룹을 명시해줄 수 있다.
 precedencegroup 우선순위 그룹 이름 {
    higherThan: 더 낮은 우선순위 그룹 이름
    lowerThan: 더 높은 우선순위 그룹 이름
    associativity: 결합방향(left / right / none)
    assignment: 할당방향 사용(true / false)
 }
 */
