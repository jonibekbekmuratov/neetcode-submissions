class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dict = [Int: Int]()
        for (currIndex, num) in nums.enumerated() {
            if let lastIndex = dict[num] {
                if currIndex-lastIndex<=k {
                    return true
                } else {
                    dict[num] = currIndex
                }
            } else {
                dict[num] = currIndex
            }
        }
        return false
    }
}
