import Foundation

public func example(of task: String, action: () -> Void) {
    print("---\(task)---")
    action()
}
