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
 */
//: ### Custom serial queue
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
//: ### Custom concurrent queue
#if false
let concurrentQueue = DispatchQueue(label: "concurrentQueue", attributes: .concurrent)

concurrentQueue.async {
    blockingPrint(message: "print 1: \(Thread.current)", afterSeconds: 1)
}

concurrentQueue.async {
    blockingPrint(message: "print 2: \(Thread.current)", afterSeconds: 1)
}

concurrentQueue.async {
    blockingPrint(message: "print 2: \(Thread.current)", afterSeconds: 1)
}
#endif
//: ### Blocking/Synchronous queue
#if false
print("The cat")
DispatchQueue.global().sync {
    blockingPrint(message: "jumped over the", afterSeconds: 1)
}
print("lazy dog")
#endif
//: ### Non-blocking/Asynchronous queue
#if false
print("The cat")
DispatchQueue.global().async {
    blockingPrint(message: "jumped over the", afterSeconds: 1)
}
print("lazy dog")
#endif
//: ### Background concurrent queue asynchronously/non-blocking
#if false
DispatchQueue.global().async {
    blockingPrint(message: "poo1: \(Thread.current)", afterSeconds: 1)
}

DispatchQueue.global().async {
    blockingPrint(message: "poo2: \(Thread.current)", afterSeconds: 1)
}

DispatchQueue.global().async {
    blockingPrint(message: "poo3: \(Thread.current)", afterSeconds: 1)
}
#endif
//: ### Main Consecutive/Serial Queue asynchronously
#if false
DispatchQueue.main.async {
    blockingPrint(message: "poo1", randomlyAfterSeconds: 1)
}

DispatchQueue.main.async {
    blockingPrint(message: "poo2", randomlyAfterSeconds: 1)
}

DispatchQueue.main.async {
    blockingPrint(message: "poo3", randomlyAfterSeconds: 1)
}
#endif
//: ### Main consecutive/serial Queue **synchronously**
#if false
DispatchQueue.main.sync {
    blockingPrint(message: "poo1", randomlyAfterSeconds: 1)
}
#endif
//: =========================
PlaygroundPage.current.needsIndefiniteExecution = true
