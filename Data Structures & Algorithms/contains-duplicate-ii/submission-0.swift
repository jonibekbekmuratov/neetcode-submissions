class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        for i in nums.indices {
            for j in i+1..<nums.count {
                guard nums[i] == nums[j] else { continue }
                guard j-i<=k else { break }
                return true
            }
        }
        return false
    }
}
