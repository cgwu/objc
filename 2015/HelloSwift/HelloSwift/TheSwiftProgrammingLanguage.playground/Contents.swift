//: 《The Swift Programming Language》练习

import Cocoa
println("Hello中国")

//属性监视器(在playground里面不能显示输出)
class StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            println("将要设置:\(newValue)")
        }
        didSet {
            println("旧值:\(oldValue),新值:\(totalSteps)")
        }
    }
    func foo() {
        println("StepCounter foo() called")
    }
    
    // 类方法，相当于其它语言的静态方法
    class func fooClass() {
        println("StepCounter class foo() called")
    }
}
var sc = StepCounter()
sc.totalSteps = 110
sc.totalSteps = 220
sc.foo()
StepCounter.fooClass()

struct FooStruct {
    var totalSteps: Int = 0 {
        willSet {
            println("将要设置:\(newValue)")
        }
        didSet {
            println("旧值:\(oldValue),新值:\(totalSteps)")
        }
    }
    func foo() {
        println("FooStruct foo() called")
    }
    
    // 结构的方法，相当于其它语言的静态方法
    static func fooClass() {
        println("FooStruct class foo() called")
    }
}
FooStruct.fooClass()

// SubScript支持使用下标的方式访问
struct TimesTable {
    var multiplier: Int = 0
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
var tt = TimesTable()
tt.multiplier = 3
tt[6]
tt.multiplier = 4
tt[7]

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid =  Array(count: rows * columns, repeatedValue: 0.0)
    }
    
    func indexIfValidForRow(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript (row: Int, column: Int) -> Double {
        get {
            assert(indexIfValidForRow(row, column: column), "index out of range")
            return grid[row * columns + column]
        }
        set {
            assert(indexIfValidForRow(row, column: column), "index out of range")
            grid[row * columns + column] = newValue
        }
    }
}

var m1 = Matrix(rows: 3, columns: 4)
m1[0,0] = 1
m1[2,3] = 9
m1[1,3] = 6
m1

//ARC & weak reference
class Person {
    var name: String
    init(name:String) {
        self.name = name
    }
    var apartment: Apartment?
    deinit {
        println("\(name) deinit")
    }
}
class Apartment {
    weak var tenant: Person?
    deinit {
        println("Apartment deinit")
    }
}
var john = Person(name: "John")
var arp1 = Apartment()
john.apartment = arp1
arp1.tenant = john
john.apartment = nil





