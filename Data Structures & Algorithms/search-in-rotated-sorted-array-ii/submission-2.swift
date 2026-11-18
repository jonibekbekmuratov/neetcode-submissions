class Solution {
    func search(_ nums: [Int], _ target: Int) -> Bool {
        var l = 0
        var r = nums.count-1
        
        func isAscending(arr: [Int], left: Int, right: Int) -> Bool {
            var l = left
            while l<right {
                if nums[l] != nums[right] {
                    return false
                }
                l += 1
            }
            return true
        }        

        while l<=r {
            let m = (l+r)/2
            if nums[m] == target {
                return true
            }
            
            if nums[m]<nums[r] || isAscending(arr: nums, left: m, right: r) {
                if target>nums[m] && target<=nums[r] {
                    l = m+1
                } else {
                    r = m-1
                }
            } else {
                if target>=nums[l] && target<nums[m] {
                    r = m-1
                } else {
                    l = m+1
                }
            }
        }

        return false
    }
}
