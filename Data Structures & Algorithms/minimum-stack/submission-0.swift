class MinStack {
    var stack = [(value: Int, min: Int)]()
    // [(1,1),(2,1),(0,0)]

    init() {}

    func push(_ val: Int) {
        stack.append((value: val, min: min(val, stack.last?.min ?? Int.max)))
    }

    func pop() {
        stack.removeLast()
    }

    func top() -> Int {
        stack.last!.value
    }

    func getMin() -> Int {
        stack.last!.min
    }
}
