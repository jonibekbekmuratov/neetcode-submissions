class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var res = ""
        var first = Array(word1)
        var second = Array(word2)

        for i in 0..<max(first.count, second.count) {
            if i < first.count {
                res.append(first[i])
            }

            if i < second.count {
                res.append(second[i])
            }
        }
        return res
    }
}
