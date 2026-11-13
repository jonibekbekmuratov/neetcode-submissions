class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack = [Int]()
        for a in asteroids {
            var add = true
            while add, a < 0, let last = stack.last, last > 0 {
                if a < -(last) {
                    stack.removeLast()
                } else if a+last == 0 {
                    stack.removeLast()
                    add = false
                } else {
                    add = false
                }
            }

            if add { stack.append(a) }
        }
        return stack
    }
}
