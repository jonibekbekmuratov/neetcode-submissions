class StockSpanner {
    var prices = [Int]()

    init() {}

    func next(_ price: Int) -> Int {
        prices.append(price)
        var count = 0
        for i in 0..<prices.count {
            if prices[prices.count-1-i] <= price {
                count += 1
            } else {
                break
            }
        }
        return count
    }
}

/**
 * Your StockSpanner object will be instantiated and called as such:
 * let obj = StockSpanner()
 * let param_1 = obj.next(price)
 */
