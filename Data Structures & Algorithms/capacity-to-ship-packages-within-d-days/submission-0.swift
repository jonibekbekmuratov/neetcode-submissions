class Solution {
    func shipWithinDays(_ weights: [Int], _ days: Int) -> Int {
        var l = weights.max()!
        var r = weights.reduce(0,+)
        var res = l

        while l<=r {
            let cap = (l+r)/2
            var total = 1
            var temp = 0
            for w in weights {
                guard temp+w<=cap else {
                    total += 1
                    temp = w
                    continue
                }
                temp += w
            }

            if total<=days {
                res = cap
                r = cap-1
            } else {
                l = cap+1
            }
        }

        return res
    }
}
