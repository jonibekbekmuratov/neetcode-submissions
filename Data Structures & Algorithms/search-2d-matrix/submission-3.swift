class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var topCol = 0
        var bottomCol = matrix.count-1
        var midCol = 0

        while topCol<=bottomCol {
            midCol = (topCol+bottomCol)/2    
            let val = matrix[midCol].first!
            if val == target {
                return true
            } else if val > target {
                bottomCol = midCol-1
            } else {
                topCol = midCol+1
            }
        }

        let row = matrix[midCol].first! > target ? matrix[midCol-1>0 ? midCol-1 : 0] : matrix[midCol]

        var leftRow = 0
        var rightRow = row.count-1

        while leftRow<=rightRow {
            let midRow = (leftRow+rightRow)/2
            if row[midRow] == target {
                return true
            } else if row[midRow] > target {
                rightRow = midRow-1
            } else {
                leftRow = midRow+1
            }
        }

        return false
    }
}
