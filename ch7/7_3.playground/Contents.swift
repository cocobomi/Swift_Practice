import UIKit

//중첩 함수(함수는 특별한 위치에 속해있지 않은이상 전역변수이지만 함수안의 함수는 상위함수의 몸통 블록 내부에서만 사용가능하다. 하지만 이 함수를 반환 값을 이용한다면 외부에서도 사용할 수 있다.)
/*
typealias MoveFunc = (Int) -> Int

func goRight(_ currentPosition: Int) -> Int {
    return currentPosition + 1
}

func goLeft(_ currentPosition: Int) -> Int {
    return currentPosition - 1
}

func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc {
    return shouldGoLeft ? goLeft : goRight
}

var position: Int = 3

let moveToZero: MoveFunc = functionForMove(position > 0)
print("원점으로 갑시다.")

while position != 0 {
    print("\(position)...")
    position = moveToZero(position)
}

print("원점 도착!")
*/


typealias MoveFunc = (Int) -> Int

func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc {
    func goRight(_ currentPosition: Int) -> Int {
        return currentPosition + 1
    }
    
    func goLeft(_ currentPosition: Int) -> Int {
        return currentPosition - 1
    }
    return shouldGoLeft ? goLeft : goRight
}

var position: Int = -4

let moveToZero: MoveFunc = functionForMove(position > 0)

while position != 0 {
    print("\(position)...")
    position = moveToZero(position)
}
print("원점 도착!")
