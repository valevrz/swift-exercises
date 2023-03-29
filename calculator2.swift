#!/usr/bin/swift

func add(num1: Int, num2: Int) -> Int {
    let sum: Int = num1 + num2
    return sum
}

func sub(num1: Int, num2: Int) -> Int {
    let sum: Int = num1 - num2
    return sum
}

func mul(num1: Int, num2: Int) -> Int {
    let sum: Int = num1 * num2
    return sum
}

func div(num1: Float, num2: Float) -> Float {
    if num1 < num2 {
        let sum: Float = Float(num1) / Float(num2)
        return sum 
    }else{
        let sum: Float = num1 / num2
        return Float(sum)
    }
}

let myOperator: String = CommandLine.arguments[1]
if let num1: Int = Int(CommandLine.arguments[2]), let num2: Int = Int(CommandLine.arguments[3]) {
    switch myOperator {
        case "add":
            print(add(num1: num1, num2: num2))
        case "sub":
            print(sub(num1: num1, num2: num2))
        case "mul":
            print(mul(num1: num1, num2: num2))
        case "div":
            if num2 != 0 {
                print(div(num1: Float(num1), num2: Float(num2)))
            } else {
                print("Error: Divide by zero")
            }
        default:
            print("Invalid operator")
    }
} else {
    print("Invalid arguments")
}
