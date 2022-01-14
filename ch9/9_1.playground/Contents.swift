import UIKit

//구조체(struct) - var로 선언시 값을 변경 가능, let으로 선언하면 프로퍼티의 값 변경불가
/*
 struct 구조체 이름 {
    프로퍼티와 메서드들
 }
 */

 struct BasicInformation {
    var name: String
    var age: Int
 }
 
 var yagomInfo: BasicInformation = BasicInformation(name: "yagom", age: 99)
 yagomInfo.age = 100 //변경 가능
 yagomInfo.name = "Seba" //변경 가능
 
 let sebaInfo: BasicInformation = BasicInformation(name: "Seba", age: 99)
 sebaInfo.age = 100 //변경 불가! 오류!
 JennyInfo.age = 100 //변경 불가!


