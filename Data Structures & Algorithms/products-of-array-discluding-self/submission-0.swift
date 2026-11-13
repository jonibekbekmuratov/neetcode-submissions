class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var leftA = [Int](repeating: 1, count: nums.count)
        var rightA = [Int](repeating: 1, count: nums.count)
        var result = [Int]()
        var left = 1
        var right = 1

        for index in nums.indices {
            leftA[index] = left
            rightA[nums.count-1-index] = right
            
            left *= nums[index]
            right *= nums[nums.count-1-index]
        }

        for index in nums.indices {
            result.append(leftA[index] * rightA[index])
        }

        return result
    }
}
