class Solution {
    func sortColors(_ nums: inout [Int]) {
        guard nums.count > 1 else { return }

        var countArray = [Int](repeating: 0, count: 3)

        for num in nums {
            countArray[num] += 1
        }

        var countIndex = 0
        for index in 0..<3 {
            while countArray[index] > 0 {
                countArray[index] -= 1
                nums[countIndex] = index
                countIndex += 1
            }
        }
    }
}
