class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        guard tokens.count > 1 else { return Int(tokens.first!)! }
        var array = [Int]()
        for token in tokens {
            var i = 0
            var j = 0
            switch token {
                case "+", "*", "/", "-":
                    i = array.removeLast()
                    j = array.removeLast()
                default: break
            }

            switch token {
                case "+":
                    array.append(i+j)
                case "-":
                    array.append(j-i)
                case "*":
                    array.append(i*j)
                case "/":
                    array.append(j/i)
                default:
                    array.append(Int(token)!)
            }
        }
        return array.first!
    }
}
