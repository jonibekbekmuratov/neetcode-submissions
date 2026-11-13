class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var k = 1
        var curr = nums.first!
        for i in 1..<nums.count {
            if nums[i] != curr {
                curr = nums[i]
                nums[k] = curr
                k += 1
            }
        }
        return k
    }
}
