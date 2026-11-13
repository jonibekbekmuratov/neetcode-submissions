class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack = [Int]()
        for a in asteroids {
            guard !stack.isEmpty else {
                stack.append(a)
                continue
            }

            if a < 0 && stack.last! > 0 {
                var add = true
                while add, let last = stack.last, last > 0 {
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
            } else {
                stack.append(a)
            }
        }
        return stack
    }
}
