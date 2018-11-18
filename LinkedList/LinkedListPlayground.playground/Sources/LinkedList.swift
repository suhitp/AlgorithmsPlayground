import Foundation

public struct LinkedList<T> {
    public var head: Node<T>?
    public var tail: Node<T>?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public init() {
        self.head = nil
        self.tail = nil
    }
    
    //Add note to head
    mutating public func push(_ value: T) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    mutating public func append(_ value: T) {
        if isEmpty {
            push(value)
            return
        }
        tail?.next = Node(value: value)
        tail = tail?.next
    }
    
    public func node(at index: Int) -> Node<T>? {
        var currentNode = head
        var currentIndex = 0
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        return currentNode
    }
    
    @discardableResult
    public mutating func insert(_ value: T, after node: Node<T>) -> Node<T> {
        if tail! === node {
            append(value)
            return tail!
        }
        node.next = Node(value: value, next: node.next)
        return node.next!
    }
    
    public mutating func insert(_ value: T, at index: Int) {
        if index == 0 {
            push(value)
            return
        }
        var currentNode = head
        var currentIndex = 0
        while currentNode != nil && currentIndex < index - 1 {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        currentNode!.next = Node(value: value, next: currentNode!.next)
    }
    
    @discardableResult
    mutating public func pop() -> T? {
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        return head?.value
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
            return "Empty list"
        }
        return String(describing: head)
    }
}
