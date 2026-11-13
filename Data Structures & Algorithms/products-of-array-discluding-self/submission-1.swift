class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = [Int](repeating: 1, count: nums.count)
        var left = 1
        var right = 1

        for index in nums.indices {
            result[index] *= left
            left *= nums[index]
            result[nums.count-index-1] *= right
            right *= nums[nums.count-index-1]
        }

        return result
    }
}
