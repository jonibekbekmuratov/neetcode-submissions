class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var dict: [Int: Int] = [:]
        for num in nums {
            if let count = dict[num] {
                return true
            } else {
                dict[num] = 1
            }
        }
        return false
    }
}
