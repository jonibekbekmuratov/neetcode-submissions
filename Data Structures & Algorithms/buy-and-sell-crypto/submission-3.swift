class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var current = prices[0]
        var profit = 0
        for i in 1..<prices.count {
            if current>prices[i] {
                current = prices[i]
            } else {
                profit = max(profit, prices[i]-current)
            }
        }
        return profit
    }
}
