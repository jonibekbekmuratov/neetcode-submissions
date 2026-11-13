/**
 * Forward declaration of guess API.
 * @param  num   your guess
 * @return       -1 if num is higher than the picked number
 *                1 if num is lower than the picked number
 *               otherwise return 0
 * func guess(_ num: Int) -> Int
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var l = 0
        var h = n
        while l<=h {
            let m = (l+h)/2
            switch guess(m) {
            case 0: return m
            case -1: h = m-1
            case 1: l = m+1
            default: break
            }
        }
        return 0
    }
}
