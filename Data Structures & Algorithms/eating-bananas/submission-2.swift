class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var l = 1
        var r = piles.max()!
        var res = r

        while l<=r {
            let speed = (l+r)/2

            var total = 0
            for pile in piles {
                total += Int(ceil(Double(pile)/Double(speed)))
            }

            if total <= h {
                res = speed
                r = speed-1
            } else {
                l = speed+1
            }
        }
        return res
    }
}
