class Solution {
    func firstMissingPositive(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else {
            return nums[0] == 1 ? 2 : 1
        }

        var smallest = 1
        var set = Set(nums)
        for _ in 0..<nums.count {
            if !set.contains(smallest) {
                break
            }
            smallest += 1
        }
        return smallest
    }
}
