class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var totalProfit = 0

        for i in 1..<prices.count {
            let diff = prices[i] - prices[i-1]
            if diff > 0 {
                totalProfit += diff
            }
        }

        return totalProfit
    }
}
