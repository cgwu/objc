// Playground - https://developer.apple.com/library/mac/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html
// Swift学习笔记
import Cocoa

var str = "Hello, playground"
println("Hello中国")

//var声明变量，let声明常量
var myVariable = 42
myVariable = 55
let myConst = 33
let myStr = "Hello世界"

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble:Double = 70

let label = "The width is "
let width = 88
let widthLabel = label + String(width)

/*转义*/
let apples = 3
let oranges = 5
let appleSummary = "我有个\(apples)苹果"
let orangeSummary = "我有个\(oranges)桔子"


//Array and Dictionary
var shoppingList = ["meat","noodle","Bread","apple"]
shoppingList[1]
shoppingList[0] = "beef"
shoppingList
var dictOccupations = [
    "CC":"programmer",
    "张三":"Admin"
]
dictOccupations["CC"]
println(dictOccupations["张三"])
//shoppingList = []
//dictOccupations = [:]
for item in shoppingList{
    println(item)
}
for kv in dictOccupations{
    print(kv.0)
    print(kv.1)
    println()
}

for (k,v) in dictOccupations{
    print(k)
    print(v)
    println()
}
//可空的字符串
var optionalString:String? = "Zhang san"
optionalString = nil
if let str = optionalString {
    var hello = "Hello \(str) " + str
}
else{
    var hello = "nil string"
}
//Switch
let vegitable = "red pepper"
switch vegitable{
    case "celery":
        let vegComment = "case 1"
    case "a","b":
        let vegComment = "case ab"
    case let x where x.hasSuffix("pepper"):
        let vegComment = "Is it a spicy \(x)"
    default:
        let vegComment = "Everything is great in soup"
}
// range
for i in 0..<4 {
    println(i)
}
for i in 0...4{
    println(i)
}
// Functions and Closures
func greet(name:String, day:String)->String{
    return "Hello \(name), Today is \(day)"
}
greet("zhansan", "Tuesday")
// 函数返回一个元组Tuple
func calcStatistics(score: [Int]) -> (min:Int, max:Int, sum:Int){
    var min = score[0]
    var max = score[0]
    var sum = 0
    for i in score{
        if i < min {
            min = i
        }
        else if i > max{
            max = i
        }
        sum += i
    }
    return (min,max,sum)
}

let r = calcStatistics([3,0,1,-2,9])
r.min
r.max
r.sum

func sumOf(arr: Int...)->Int{
    var sum: Int = 0 ;
    for i in arr{
        sum += i
    }
    return sum
}
sumOf(1,2,3,4)

// 内嵌函数
func returnFifteen()->Int{
    var y = 5;
    func add(){
        y+=5;
    }
    add()
    add()
    return y
}
returnFifteen()
// 返回函数
func makeIncrementer()->(Int->Int){
    func addOne(x:Int)-> Int{
        return x+1
    }
    return addOne
}
var finc = makeIncrementer()
finc(7)
finc(0)
// 函数作为参数
func hasAnyMatches(list:[Int], condition: Int -> Bool ) -> Bool{
    for i in list{
        if condition(i){
            return true
        }
    }
    return false
}
func lessThenTen(x:Int)->Bool{
    return x < 10
}
var hasM = hasAnyMatches([11,12,9], lessThenTen)
//闭包
func makeCounter()->(()->Int){
    var i = 0
    func counter()->Int{
        return ++i
    }
    return counter
}
var fcnt = makeCounter()
fcnt()
fcnt()
fcnt()
// map函数
var numbers = [4,2,3,-4]
var numberTransform = numbers.map({
    (n:Int) -> Int in
    let result = 3 * n
    return result
})
numberTransform
var numberTransform1 = numbers.map({
    (n:Int) -> Int in
    return n % 2 == 1 ? 0 : n
})
numberTransform1
//更简单的写法
let mappedNumbers = numbers.map({n in 3 * n})
mappedNumbers
//引用参数简便写法
let sortedNumbers = sorted(numbers){$0 < $1}
sortedNumbers

// 类
class Shape{
    var numberOfSides = 0
    func desc()->String{
        return "A shape with \(numberOfSides) sides."
    }
}
var shape = Shape()
shape.numberOfSides = 11
shape.desc()

class NamedShape{
    var numberOfSides = 0
    var name:String
    
    init(name:String){
        self.name = name
    }
    func desc()->String{
        return "\(name) shape with \(numberOfSides) sides."
    }
}
var nshape = NamedShape(name:"长方形")
nshape.numberOfSides = 11
nshape.desc()

class Square : NamedShape{
    var sideLength: Double
    var someProp:Double{
        get{
            return sideLength * 3
        }
        set{
            sideLength = newValue / 3
        }
    }
    
    init(sideLength:Double,name:String){
        self.sideLength = sideLength
        super.init(name: name)
    }
    
    func area()->Double{
        return self.sideLength * self.sideLength
    }
    
    override func desc() -> String {
        return "\(name) Square with \(numberOfSides) siides."
    }
}
let square = Square(sideLength: 2.2, name: "my test square")
square.numberOfSides = 8
square.desc()
square.area()
square.someProp
square.someProp = 9     //按属性设置
square.someProp
square.sideLength

// 对象上的方法
class Counter{
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes time: Int ){
        count += amount * time
    }
}
var cnt = Counter()
cnt.incrementBy(2, numberOfTimes: 3)
//枚举与结构体
enum Rank:Int{
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    
    func simpleDesc()->String{
        switch self{
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
var ace = Rank.Ace
ace.simpleDesc()
ace = Rank.Two
ace.simpleDesc()
//struct结构体与类class大体相似，最大的区别在于：struct传递时总是被copy,而类是传引用passed by reference.
/* class */ struct Card{
    var rank : Rank
    var name:String
    init(rank:Rank, name:String){
        self.rank = rank
        self.name = name
    }
}
var c1 = Card(rank: Rank.Ace, name: "c1")
var c2 = c1
c2.name = "c2"
c1.name
c2.name








