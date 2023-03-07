import UIKit
//Array
var stationeries = ["pencile", "eraser", "pen"]
stationeries[0]
/* 或者打這樣:
 var stationeries: [String]= ["pencile", "eraser", "pen"]
 stationeries[0]
 */

//字串串連，用字串串連的好處是，不用打一堆+，且字串數字可以混+
var name = "Jeff"
var hight = 180
var age = 18
var introduce = "我是\(hight)公分,\(age)歲的\(name)"
introduce

//發明型別，Class就像是東西說明書，裡面寫著東西的屬性或功能(Function or property)，我們可以用這些功能做出很多東西來
//class產生的東西稱為物件
//練習在 playground 寫一個類別，生兩個物件。修改它們的屬性後，印出屬性的內容
//物件的屬性
class BabyDog{
    var name = ""
    var age = 0
    var skill = ""
}
var dog1 = BabyDog()
dog1.name = "Mike"
dog1.age = 5
dog1.skill = "裝死"
var dog2 = BabyDog()
dog2.name = "Sophie"
dog2.age = 13
dog2.skill = "撿飛盤"
print(dog1.name,dog1.age,"歲，會",dog1.skill)
print(dog2.name,dog2.age,"歲，會",dog2.skill)
//物件的方法
class FoodCost{
    func spend(brakfast:Int,lunch:Int,dinner:Int){
        print("I spend \(brakfast+lunch+dinner) dollars")
    }
}
let cost = FoodCost()
cost.spend(brakfast: 70, lunch: 110, dinner: 110)

//定義兩個類別，用到繼承，類別裡包含屬性和方法，在方法裡有使用到屬性，然後用類別生出物件 存取物件的屬性和呼叫物件的方法。
class 妙蛙種子{
    let skill = "飛葉快刀"
    var level = 15
    var 體力 = 100
    func 戰鬥1(受到的傷害:Int, 等級上升:Int){
        print("用\(skill)擊敗皮卡丘")
        體力 = 體力-受到的傷害
        level = level+等級上升
    }
}
class 妙蛙花:妙蛙種子{
    let skill2 = "陽光烈焰"
    func 戰鬥2(受到的傷害:Int, 等級上升:Int){
        print("用\(skill2)擊敗傑尼龜")
        體力 = 體力-受到的傷害
        level = level+等級上升
    }
}

let cutePokemon = 妙蛙種子()
var 原本level = cutePokemon.level
print("原本等級為\(原本level)")
var 原本體力 = cutePokemon.體力
print("原本體力為\(原本體力)")
cutePokemon.戰鬥1(受到的傷害: 20, 等級上升: 23)
print("等級升為\(cutePokemon.level)")
print("體力剩下\(cutePokemon.體力)")

let strongPokemon = 妙蛙花()
strongPokemon.skill
strongPokemon.skill2
strongPokemon.level = 38
print("原本等級為\(strongPokemon.level)")
strongPokemon.體力 = 200
print("原本體力為\(strongPokemon.體力)")
strongPokemon.戰鬥1(受到的傷害: 5, 等級上升: 1)
strongPokemon.戰鬥2(受到的傷害: 10, 等級上升: 2)
print("等級升為\(strongPokemon.level)")
print("體力剩下\(strongPokemon.體力)")
