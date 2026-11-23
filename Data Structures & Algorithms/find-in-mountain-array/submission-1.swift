class Solution {
    func findInMountainArray(_ target: Int, _ mountainArr: MountainArray) -> Int {
        // 1. find a peak
        var l = 0
        var r = mountainArr.length()-1 
        // [1,2,3,4,5,3,1]
        while l<r {
            let m = (l+r)/2
            if get(m) > get(m+1) {
                r = m
            } else {
                l = m+1
            }
        }

        let peak = l

        var ls1 = 0
        var rs1 = peak

        while ls1<=rs1 {
            let m = (ls1+rs1)/2
            if target == get(m) {
                return m
            } else if get(m) > target {
                rs1 = m-1
            } else {
                ls1 = m+1
            }
        }

        var ls2 = peak
        var rs2 = mountainArr.length()-1

        while ls2<=rs2 {
            let m = (ls2+rs2)/2
            if target == get(m) {
                return m
            } else if get(m) > target {
                ls2 = m+1
            } else {
                rs2 = m-1
            }
        }

        return -1

        func get(_ i: Int) -> Int {
            mountainArr.get(i)
        }
    }
}
