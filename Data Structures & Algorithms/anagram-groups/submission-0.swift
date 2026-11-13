class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result: [String: [String]] = [:]

        for index in strs.indices {
            let element = String(strs[index].sorted())
            if let array = result[element] {
                let updatedArray = array + [strs[index]]
                result[element] = updatedArray
            } else {
                result[element] = [strs[index]]
            }
        }

        return result.values.flatMap { $0 }
    }
}
