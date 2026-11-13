class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        guard tokens.count > 1 else { return Int(tokens.first!)! }
        var array = [Int]()
        for token in tokens {
            switch token {
                case "+":
                    let res = array.removeLast() + array.removeLast()
                    array.append(res)
                case "-":
                    let last = array.removeLast()
                    let beforeLast = array.removeLast()
                    let res =  beforeLast - last
                    array.append(res)
                case "*":
                    let res = array.removeLast() * array.removeLast()
                    array.append(res)
                case "/":
                    let last = array.removeLast()
                    let beforeLast = array.removeLast()
                    let res =  beforeLast / last
                    array.append(res)
                default:
                    array.append(Int(token)!)
            }
        }
        return array.first!
    }
}
