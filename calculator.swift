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

print("Enter the first integer: ")
if let num1: Float = Float(readLine() ?? "") {
    print("Enter the second integer: ")
    if let num2: Float = Float(readLine() ?? "") {
        print("Enter an operator(+,-,*,/): ")
        if let op: String = readLine() {
            if op == "+" {
                print(add(num1: Int(num1), num2: Int(num2)))
            }

            if op == "-" {
                print(sub(num1: Int(num1), num2: Int(num2)))
            }

            if op == "*" {
                print(mul(num1: Int(num1), num2: Int(num2)))
            }

            if op == "/" {
                print(div(num1: num1, num2: num2))
            }
                
        }
        
    }
}