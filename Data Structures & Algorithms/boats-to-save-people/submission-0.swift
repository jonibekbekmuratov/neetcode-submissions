class Solution {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        var arr = people.sorted()
        var l = 0
        var r = people.count-1
        var res = 0
        while l<=r {
            if arr[l]+arr[r] > limit {
                r -= 1
            } else {
                l += 1
                r -= 1
            }
            res += 1
        }
        return res
    }
}
