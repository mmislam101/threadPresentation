import UIKit
import Foundation
import PlaygroundSupport

//: =========================
//: ## Processes Vs. Threads
//: What is a process and what is a thread?
//: ## Process
//: ![Processes](Processes.png)
//: =========================
//: ![ProcessAndThreads](ProcessAndThreads.png)
//: ## Threads
//: ![Thread](Thread.png)
//: [Creating Threads](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/Multithreading/CreatingThreads/CreatingThreads.html)
#if false
let thread = Thread {
    print("I'm just a task, only a task")
}
thread.start()
#endif
//: =========================
//: ## Run Loop
//: ![RunLoop](RunLoop.png)
//: [Run Loop Management](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/Multithreading/RunLoopManagement/RunLoopManagement.html) \
//: ![CocoalRunLoop](CocoalRunLoop.jpg)
#if false
let timer = Timer(timeInterval: 1.0, repeats: true) { timer in
    print("tick")
}
let runner = RunLoop.current
runner.add(timer, forMode: RunLoopMode.defaultRunLoopMode)
#endif
//: =========================
//: ## Queues
/*:
 There are many ways to adapt existing threaded code to take advantage of Grand Central Dispatch and operation objects. Although moving away from threads may not be possible in all cases, performance (and the simplicity of your code) can improve dramatically in places where you do make the switch. Specifically, using dispatch queues and operation queues instead of threads has several advantages:
 
 - It reduces the memory penalty your application pays for storing thread stacks in the application’s memory space.
 - It eliminates the code needed to create and configure your threads.
 - It eliminates the code needed to manage and schedule work on threads.
 - It simplifies the code you have to write. \
 [Dispatch Queues](https://developer.apple.com/library/content/documentation/General/Conceptual/ConcurrencyProgrammingGuide/ThreadMigration/ThreadMigration.html)
 
 There are two types of Queues, **Serial** and **Concurrent** \
 ![Queues](Queues.png) \
 There are two types of executions, **Synchronous** or blocking and **Asynchronous** or non-blocking \
 ![Executions](Executions.png)
 */
//: ### Synchronous execution
#if false
print("The cat")
DispatchQueue.global().sync {
    blockingPrint(message: "jumped over the", afterSeconds: 1)
}
print("lazy dog")
#endif
//: ### Asynchronous execution
#if false
print("The cat")
DispatchQueue.global().async {
    blockingPrint(message: "jumped over the", afterSeconds: 1)
}
print("lazy dog")
#endif
//: ### Serial queue
#if false
let serialQueue = DispatchQueue(label: "serialQueue")

serialQueue.async {
    blockingPrint(message: "print 1: \(Thread.current)", afterSeconds: 1)
}

serialQueue.async {
    blockingPrint(message: "print 2: \(Thread.current)", afterSeconds: 1)
}

serialQueue.async {
    blockingPrint(message: "print 3: \(Thread.current)", afterSeconds: 1)
}
#endif
//: ### Concurrent queue
#if false
let concurrentQueue = DispatchQueue(label: "concurrentQueue", attributes: .concurrent)

concurrentQueue.async {
    blockingPrint(message: "print 1: \(Thread.current)", afterSeconds: 1)
}

concurrentQueue.async {
    blockingPrint(message: "print 2: \(Thread.current)", afterSeconds: 1)
}

concurrentQueue.async {
    blockingPrint(message: "print 3: \(Thread.current)", afterSeconds: 1)
}
#endif
//: ### Background concurrent and asynchronous
#if false
DispatchQueue.global().async {
    blockingPrint(message: "print 1: \(Thread.current)", afterSeconds: 1)
}

DispatchQueue.global().async {
    blockingPrint(message: "print 2: \(Thread.current)", afterSeconds: 1)
}

DispatchQueue.global().async {
    blockingPrint(message: "print 3: \(Thread.current)", afterSeconds: 1)
}
#endif
//: ### Main serial and asynchronous
#if false
DispatchQueue.main.async {
    blockingPrint(message: "print 1", randomlyAfterSeconds: 1)
}

DispatchQueue.main.async {
    blockingPrint(message: "print 2", randomlyAfterSeconds: 1)
}

DispatchQueue.main.async {
    blockingPrint(message: "print 3", randomlyAfterSeconds: 1)
}
#endif
//: ### Main serial and synchronous
#if false
DispatchQueue.main.sync {
    blockingPrint(message: "print", randomlyAfterSeconds: 1)
}
#endif
/*: 
 ### Other types of DispatchQueues
 - DispatchGroup: If you want to execute a task something **after** one or more Queues are finished
 - DispatchWorkItem: If you want to cancel work on a queue
 - DispatchSource: Not really sure what this is \
 [Good doc with examples](https://www.allaboutswift.com/dev/2016/7/12/gcd-with-swfit3)
 */
//: =========================
PlaygroundPage.current.needsIndefiniteExecution = true
