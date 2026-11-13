class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var totalProfit = 0
        for i in 1..<prices.count {
            if prices[i] - prices[i-1] > 0 {
                totalProfit += prices[i] - prices[i-1]
            }
        }
        return totalProfit
    }
}
