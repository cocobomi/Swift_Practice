import UIKit
import Darwin

/*
 Switch 구문(소괄호 생략가능, break 키워드 사용은 선택 사항, break가 없을경우 내부의 코드를 모두 실행후 구문이 종료됨,
            따라서 break를 쓰지 않고 case를 연속 실행하던 트릭을 사용하지 못함, case를 연속사용하려면 fallthrough 키워드를 사용,
            조건에 다양한 값의 타입이 들어갈 수 있음, 단 case에 들어갈 비교 값은 데이터 타입이 같아야 함,
            비교될 값이 명확히 한정적인 값(열거형 값 등)이 아닐 때는 default를 꼭 작성해야 함,
            case에는 범위 연산자를 사용할 수도 있고 where절을 사용하여 조건을 확장할 수도 있음,
            case 다음에는 꼭 실행가능한 코드가 위치해야 함, 실행가능한 코드가 없을시 비어있으므로 오류가 발생함)
 */

/*
let integerValue: Int = 5

switch integerValue {
case 0:
    print("Value == zero")
case 1...10:
    print("Value == 1~10")
    fallthrough
case Int.min..<0, 101..<Int.max:
    print("Value < 0 or Value > 100")
    break
default:
    print("10 < Value <= 100")
}
*/



/*
let stringValue: String = "Joker"

switch stringValue {
case "yagom":
    print("He is yagom")
case "Jay":
    print("He is Jay")
case "Jenny":
    fallthrough
case "Joker":
    fallthrough
case "Nova":
    print("He or She is \(stringValue)")
default:
    print("\(stringValue) said 'I don't know who you are.'")
}
*/



/*
//와일드카드 식별자(_) 사용하면 무시된 값을 직접 가져와야 하는 불편함이 생긴다. 그래서 미리 지정된 조건 값을 제외한 다른 값은 실헹문 안으로 가져올 수 있다. 그때 let을 붙인 값 바인딩을 사용한다.
typealias NameAge = (name: String, age: Int)

let tupleValue: NameAge = ("yagom", 99)

switch tupleValue {
case ("yagom", 99):
    print("정확히 맞췄습니다!")
case ("yagom", _):
    print("이름만 맞았습니다. 나이는 \(tupleValue.age)입니다.")
case (_, 99):
    print("나이만 맞았습니다. 이름은 \(tupleValue.name)입니다.")
default:
    print("누굴 찾나요?")
}
*/


/*
//where 키워드 사용 case 조건문
let 직급: String = "사원"
let 연차: Int = 1
let 인턴인가: Bool = false

switch 직급 {
case "사원" where 인턴인가 == true:
    print("인턴입니다.")
case "사원" where 연차 < 2 && 인턴인가 == false:
    print("신입사원입니다.")
case "사원" where 연차 > 5:
    print("연식 좀 된 사원입니다.")
case "사원":
    print("사원입니다.")
case "대리":
    print("대리입니다.")
default:
    print("사장입니까?")
}
*/


/*
enum School {
    case primary, elementary, middle, high, college, university, graduate
}

let 최종학력: School = School.university

switch 최종학력 {
case .primary:
    print("최종학력은 유치원입니다.")
case .elementary:
    print("최종학력은 초등학교입니다.")
case .middle:
    print("최종학력은 중학교입니다.")
case .high:
    print("최종학력은 고등학교입니다.")
case .college, .university:
    print("최종학력은 대학(교) 입니다.")
case .graduate:
    print("최종학력은 대학원입니다.")
}
*/


//추후 추가될 case에 대비해 오류가 뜰 수 있도록 unknown 속성을 사용하였고 이에 따라 Switch must be exhaustive 오류가 떠서 추후 다른 작업자가 알 수 있도록 하였음, 만약 와일드카드 식별자(_)만 사용허였을 경울 새로운 case를 추가해도 오류가 뜨지 않아 문법적으로는 오류가 없지만 논리적으로 오류가 생겨 혼동을 일으킬 수 있으므로 unknown을 사용하여 미연에 방지하는 것이다.
//이를 통해 해당 switch구문이 모든 case에 대응하지 않는다는 사실을 알 수 있으며, unknown 속성을 부여한 case는 switch의 가장 마지막 case로 작성해야한다.
enum Menu {
    case chicken
    case pizza
    case hamburger
}

let lunchMenu: Menu = .chicken

switch lunchMenu {
case .chicken:
    print("반반 무많이")
case .pizza:
    print("핫소스 많이 주세요")
@unknown case _:
    print("오늘 메뉴가 뭐죠?")
}


