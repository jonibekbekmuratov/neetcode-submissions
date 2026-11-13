class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if nums.first! > target {
            return 0
        } else if nums.last! < target {
            return nums.count
        } else {
            // nums=[-1,0,2,4,6,8]
            // target=5
            // actual result: 2
            // expected result: 4
            var l = 0
            var h = nums.count-1
            var m = (l+h)/2
            while l<=h {
                m = (l+h)/2
                if target == nums[m] {
                    return m
                } else if target > nums[m] {
                    l = m+1
                } else {
                    h = m-1
                }
            }
            // l = 3, h = 2, m =3

            if nums[m] > target {
                return m
            } else {
                return m+1
            }
        }
    }
}
