class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var deletedElementsCount = 0
        for index in 0..<nums.count {
            let currentIndex = index - deletedElementsCount
            if nums[currentIndex] == val {
                nums.remove(at: currentIndex)
                deletedElementsCount += 1
            }
        }
        return nums.count
    }
}
