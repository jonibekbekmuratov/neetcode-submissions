class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var deletedElementsCount = 0
      for index in 0..<nums.count {
        print("start array = \(nums), index = \(index)")
        let currentIndex = index - deletedElementsCount
        if nums[currentIndex] == val {
          nums.remove(at: currentIndex)
          deletedElementsCount += 1
        }
        print("end array = \(nums), index = \(index), deletedElementsCount = \(deletedElementsCount)")
      }
    return nums.count
    }
}
