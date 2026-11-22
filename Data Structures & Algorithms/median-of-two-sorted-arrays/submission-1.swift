class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var i = 0 // O((m+n)log(m+n))
        var j = 0
        var merged = [Int]()

        while i < nums1.count && j < nums2.count {
            if nums1[i]<nums2[j] {
                merged.append(nums1[i])
                i += 1
            } else {
                merged.append(nums2[j])
                j += 1
            }
        }

        merged.append(contentsOf: nums1[i...])
        merged.append(contentsOf: nums2[j...])

        let c = merged.count
        if c%2 == 1 {
            return Double(merged[c/2])
        } else {
            return Double(merged[c/2-1]+merged[c/2])/2.0
        }
    }
}
