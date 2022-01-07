import UIKit
import Darwin
import Foundation

enum School: String {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

let highestEducationlevel: School = School.university
print("저의 최종학력은 \(highestEducationlevel.rawValue) 졸업입니다.")

print(School.elementary.rawValue)

enum Numbers: Int {
    case Zero
    case one
    case two
    case ten = 10
}

print("\(Numbers.Zero.rawValue), \(Numbers.one.rawValue), \(Numbers.two.rawValue), \(Numbers.ten.rawValue)")

let primary = School(rawValue: "유치원")
let graduate = School(rawValue: "석박사")

let one = Numbers(rawValue: 1)
let three = Numbers(rawValue: 3)

/*
enum WeekDays: Character {
    case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}

let today: WeekDays = WeekDays.fri
print("오늘은 \(today.rawValue)요일입니다.")
*/

/*
var highestEducationlevel: School = School.university

//위 코드와 정확히 같은 표현입니다.
//var highestEducationlevel: School = .university

//같은 타입인 School 내부의 항목으로만 highestEducationlevel의 값을 변경해줄 수 있습니다.
highestEducationlevel = .graduate
*/

