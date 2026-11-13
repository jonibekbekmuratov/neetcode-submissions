class Solution {
    func mySqrt(_ x: Int) -> Int {
        var l = 0
        var h = x
        while l<=h {
            let m = (l+h)/2
            let sqr = m*m
            if x == sqr {
                return m
            } else if x > sqr {
                l = m+1
            } else {
                h = m-1
            }
        }
        return l*l > x ? l-1 : l
    }
}
