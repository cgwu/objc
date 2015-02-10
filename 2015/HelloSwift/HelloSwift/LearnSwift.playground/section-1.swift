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

//ARC : Auto Reference Counting 自动引用计数
class Person{
    var name: String
    init(name:String){
        self.name = name
        println("\(name) is inited.")
    }
    deinit{
        println("\(name) is deinited")
    }
}
var p1:Person?
var p2:Person?
var p3:Person?
p1 = Person(name:"zhansan")
p2 = p1
p3 = p1
p1 = nil
p2 = nil
p3 = nil

//Extensions扩展：给现有的类，结构体，枚举增加新的属性，方法，构造函数等，或增加新的接口Protocol
//扩展属性
var d:Double = 1_000
extension Double{
    var km: Double {return self * 1000}
    var m: Double {return self}
    var mm: Double {return self / 1000}
}
d.km
d.m
d.mm
//扩展方法
extension Int{
    //执行多次任务
    func repetitions(task:()->()){
        for i in 0..<self{
            task()
        }
    }
    mutating func square(){
        self = self * self
    }
}
3.repetitions({
    println("Hello world")
})
var someInt = 4
someInt.square()
someInt

//Subscripts: 使用方括号访问成员元素的一种快捷方式
struct TimesTable{
    let multiplier:Int
    subscript(index: Int) -> Int{
        return multiplier * index
    }
}
var t1 = TimesTable(multiplier: 3)
t1[2]
//示例2: 矩阵
struct Matrix{
    let rows:Int, columns:Int
    var grid:[Double]
    init(rows:Int, columns:Int){
        self.rows = rows
        self.columns = columns
        grid = Array( count: rows * columns, repeatedValue: 0.0)
    }
    func indexIsValidForRow(row:Int, column:Int)->Bool{
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript (row:Int, column: Int)-> Double{
        get{
            assert( indexIsValidForRow(row, column: column), "Index out of range")
            return grid[ columns * row + column]
        }
        set{
            assert( indexIsValidForRow(row, column: column), "Index out of range")
            grid[ columns * row + column] = newValue
        }
    }
}
var m1 = Matrix(rows: 3, columns: 3)
m1[2,2] = 1
m1[0,0]
m1[0,1] = 2
/******** 可选链 Optional Chain *******/
class People {
    var residence: Residency?
}
class Residency {
    var numberOfRooms = 1
}
var people1 = People()
//people1.residence = Residency()
//people1.residence!.numberOfRooms    //发生错误
println(people1.residence?.numberOfRooms)
//在if中判断
if let rooms = people1.residence?.numberOfRooms {
    println("我有\(rooms)个房间")
}
else{
    println("没有空房间了")
}
/*********** 类型转换 Type Casting (注意is与as?的用法)*************/
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}
let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]
var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        ++movieCount
    } else if item is Song {
        ++songCount
    }
}
println("Media library contains \(movieCount) movies and \(songCount) songs")
//AnyObject是相同的类型
let someObjects: [AnyObject] = [
    Movie(name: "2001: A Space Odyssey", director: "Stanley Kubrick"),
    Movie(name: "Moon", director: "Duncan Jones"),
    Movie(name: "Alien", director: "Ridley Scott")
]
for object in someObjects {
    let movie = object as Movie
    println("Movie: '\(movie.name)', dir. \(movie.director)")
}
//Any可以是不同的类型
var things = [Any]()

things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0, 5.0))
things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
things.append({ (name: String) -> String in "Hello, \(name)" })

for thing in things {
    switch thing {
    case 0 as Int:
        println("zero as an Int")
    case 0 as Double:
        println("zero as a Double")
    case let someInt as Int:
        println("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        println("a positive double value of \(someDouble)")
    case is Double:
        println("some other double value that I don't want to print")
    case let someString as String:
        println("a string value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        println("an (x, y) point at \(x), \(y)")
    case let movie as Movie:
        println("a movie called '\(movie.name)', dir. \(movie.director)")
    case let stringConverter as String -> String:
        println(stringConverter("Michael"))
    default:
        println("something else")
    }
}

/***** 协议: Protocol ****/
protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
}
/*As with type property requirements, you always prefix type method requirements with the class keyword when they are defined in a protocol. This is true even though type method requirements are prefixed with the static keyword when implemented by a structure or enumeration:*/
protocol AnotherProtocol {
    class var someTypeProperty: Int { get set }
}
protocol FullyNamed {
    var fullName: String { get }
}
struct FullPerson: FullyNamed {
    var fullName: String
}
let john = FullPerson(fullName: "John Appleseed")

struct Account{
    var owner: String = "Tony"
    static var rate = 0.668     //静态属性
    static func fee(amount:Double)-> Double{
        return rate * amount    //静态方法
    }
    func messageFee(amount: Double) -> String{
        var amt = Account.fee(amount)
        return "\(self.owner) 该出的利息是\(amt)"
    }
}
var zhangsan = Account( owner: "张三")
zhangsan.messageFee(100)
Account.rate = 0.334
zhangsan.messageFee(100)



