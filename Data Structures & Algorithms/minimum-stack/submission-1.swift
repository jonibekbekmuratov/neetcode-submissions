class MinStack {

    class Node {
        var next: Node?
        var val: Int
        var min: Int

        init(val: Int, min: Int, next: Node? = nil) {
            self.val = val
            self.min = min
            self.next = next
        }
    }

    var head: Node!

    init() {}

    func push(_ val: Int) {
        // [1,2,0]
        // [(1,1), (2,1)]
        if head == nil {
            head = Node(val: val, min: val)
        } else {
            head = Node(val: val, min: min(val, head.min), next: head)
        }
    }

    func pop() {
        head = head.next
    }

    func top() -> Int {
        head.val
    }

    func getMin() -> Int {
        head.min
    }
}
