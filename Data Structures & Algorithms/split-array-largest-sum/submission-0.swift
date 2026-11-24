class Solution {
    func splitArray(_ nums: [Int], _ k: Int) -> Int {
        // [2,4,10,1,5] -> [2] & [4,10,1,5] -> [2,4,10] & [1,5]
        // k = 2
        var lo = nums.max()! // 10
        var hi = nums.reduce(0,+) // 22
        var res = hi // 22

        while lo<=hi {
            let mid = (lo+hi)/2 // 16
            if canSplit(mid) {
                hi = mid-1
                res = min(res, mid)
            } else {
                lo = mid+1
            }
        }

        return res

        func canSplit(_ target: Int) -> Bool {
            var total = 1 // 2
            var curr = 0 // 1
            for num in nums {
                guard total <= k else { return false }
                if curr+num<=target {
                    curr += num
                } else {
                    total += 1
                    curr = num
                }
            }
            return total<=k
        }
    }
}
