class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var l = 0
        var r = nums.count-1 
        var res = min(nums[l], nums[r])

        while l<=r {
            let m = Int(ceil(Double(l+r)/Double(2)))
            if nums[m]>nums[l] {
                res = min(res, nums[l])
                l = m+1
            } else {
                res = min(res, nums[m])
                r = m-1
            }
        }

        return res
    }
}
