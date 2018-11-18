import Foundation

example(of: "Creating a LinkedList and linking nodes") {
    let node1 = Node<Int>(value: 1)
    let node2 = Node<Int>(value: 2)
    let node3 = Node<Int>(value: 3)
    node1.next = node2
    node2.next = node3
    var linkedList = LinkedList<Int>()
    linkedList.head = node1
    linkedList.tail = node3
    print(linkedList)
}

example(of: "Push in LinkedList") {
    var linkedList = LinkedList<Int>()
    linkedList.push(3)
    linkedList.push(2)
    linkedList.push(1)
    print(linkedList)
}

example(of: "Append") {
    var linkedList = LinkedList<Int>()
    linkedList.push(3)
    linkedList.push(2)
    linkedList.push(1)
    linkedList.append(4)
    linkedList.push(0)
    print(linkedList)
}

example(of: "inserting at a particular index") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    print("Before inserting: \(list)")
    list.insert(4, at: 3)
    print("After inserting: \(list)")
    list.pop()
    print("After poping: \(list)")
    list.insert(1, at: 3)
    print("After insert: \(list)")
}
