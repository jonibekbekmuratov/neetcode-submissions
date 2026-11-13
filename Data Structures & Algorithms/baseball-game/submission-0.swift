class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var points = [Int]()

        for op in operations {
            let count = points.count
            switch op {
                case "+": points.append(points[count-1]+points[count-2])
                case "D": points.append(points[count-1]*2)
                case "C": points.removeLast()
                default: points.append(Int(op)!)
            }
        }

        var total = 0
        for point in points {
            total += point
        }

        return total
    }
}
