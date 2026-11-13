class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var res = Array(repeating: 0, count: temperatures.count)
        var stack = [Int]()
        for i in 0..<temperatures.count {
            while let last = stack.last, temperatures[i] > temperatures[last] {
                stack.removeLast()
                res[last] = i-last
            }
            stack.append(i)
        }
        return res
    }
}
