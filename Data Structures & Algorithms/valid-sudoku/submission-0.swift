class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        for i in 0..<9 {
            var row = Set<Character>()
            var column = Set<Character>()

            for j in 0..<9 {
                if board[i][j] != "." { 
                    if !row.insert(board[i][j]).inserted { return false } 
                }
                if board[j][i] != "." {
                    if !column.insert(board[j][i]).inserted { return false }
                }
            }
        }

        for i in stride(from: 0, to: 9, by: 3) {
            for j in stride(from: 0, to: 9, by: 3) {
                var result = Set<Character>()
                for k in i..<i+3 {
                    for l in j..<j+3 {
                        if board[k][l] != "." {
                            if !result.insert(board[k][l]).inserted { return false }
                        }
                    }
                }
            }
        }

        return true
    }
}
