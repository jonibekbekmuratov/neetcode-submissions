class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix = Array(strs[0])

        for index in strs.indices {
            let compare = Array(strs[index])
            let diff = prefix.count - compare.count
            prefix.removeLast(diff > 0 ? diff : 0)
            for i in 0..<prefix.count {
                if prefix[i] != compare[i] {
                    prefix.removeLast(prefix.count-i)
                    break
                }
            }
        }

        return String(prefix)
    }
}
