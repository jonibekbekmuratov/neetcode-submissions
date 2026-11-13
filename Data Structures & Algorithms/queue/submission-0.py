class Deque:
    class ListNode:
        def __init__(self, val, next=None, prev=None):
            self.val = val
            self.next = next
            self.prev = prev

    def __init__(self):
        self.head = None
        self.tail = None

    def isEmpty(self):
        return self.head is None

    def append(self, value):
        new_node = self.ListNode(value)
        if self.tail is not None:
            self.tail.next = new_node
            new_node.prev = self.tail
            self.tail = new_node
        else:
            self.tail = new_node
            self.head = new_node

    def appendleft(self, value):
        new_node = self.ListNode(value)
        if self.head is not None:
            self.head.prev = new_node
            new_node.next = self.head
            self.head = new_node
        else:
            self.head = new_node
            self.tail = new_node

    def pop(self):
        if self.tail is None:
            return -1
        value = self.tail.val
        prev = self.tail.prev
        if prev:
            prev.next = None
            self.tail = prev
        else:
            self.tail = None
            self.head = None
        return value

    def popleft(self):
        if self.head is None:
            return -1
        value = self.head.val
        next = self.head.next
        if next:
            next.prev = None
            self.head = next
        else:
            self.head = None
            self.tail = None
        return value