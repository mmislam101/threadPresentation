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
//: [Run Loop Management](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/Multithreading/RunLoopManagement/RunLoopManagement.html)
//let timer = Timer(timeInterval: 1.0, repeats: true) { timer in
//    print("poop")
//}
//let runner = RunLoop.current
//runner.add(timer, forMode: RunLoopMode.defaultRunLoopMode)
//: =========================
//: ## Queues
//: [Dispatch Queues](https://developer.apple.com/library/content/documentation/General/Conceptual/ConcurrencyProgrammingGuide/OperationQueues/OperationQueues.html)
//: ### Custom serial queue
//let serialQueue = DispatchQueue(label: "monkeyQueue")
//
//serialQueue.async {
//    blockingPrint(message: "poo1: \(Thread.current)", afterSeconds: 1)
//}
//
//serialQueue.async {
//    blockingPrint(message: "poo2: \(Thread.current)", afterSeconds: 1)
//}
//
//serialQueue.async {
//    blockingPrint(message: "poo3: \(Thread.current)", afterSeconds: 1)
//}
//: ### Custom concurrent queue
//let concurrentQueue = DispatchQueue(label: "buttQueue", attributes: .concurrent)
//
//concurrentQueue.async {
//    blockingPrint(message: "poo1: \(Thread.current)", afterSeconds: 1)
//}
//
//concurrentQueue.async {
//    blockingPrint(message: "poo2: \(Thread.current)", afterSeconds: 1)
//}
//
//concurrentQueue.async {
//    blockingPrint(message: "poo3: \(Thread.current)", afterSeconds: 1)
//}
//: ### Blocking/Synchronous queue
//print("moop")
//DispatchQueue.global().sync {
//    blockingPrint(message: "bloop", afterSeconds: 1)
//}
//print("woop")
//: ### Non-blocking/Asynchronous queue
//print("moop")
//DispatchQueue.global().async {
//    blockingPrint(message: "bloop", afterSeconds: 1)
//}
//print("woop")
//: ### Background concurrent queue asynchronously/non-blocking
//DispatchQueue.global().async {
//    blockingPrint(message: "poo1: \(Thread.current)", afterSeconds: 1)
//}
//
//DispatchQueue.global().async {
//    blockingPrint(message: "poo2: \(Thread.current)", afterSeconds: 1)
//}
//
//DispatchQueue.global().async {
//    blockingPrint(message: "poo3: \(Thread.current)", afterSeconds: 1)
//}
//: ### Main Consecutive/Serial Queue asynchronously
//DispatchQueue.main.async {
//    blockingPrint(message: "poo1", randomlyAfterSeconds: 1)
//}
//
//DispatchQueue.main.async {
//    blockingPrint(message: "poo2", randomlyAfterSeconds: 1)
//}
//
//DispatchQueue.main.async {
//    blockingPrint(message: "poo3", randomlyAfterSeconds: 1)
//}
//: ### Main consecutive/serial Queue **synchronously**
//DispatchQueue.main.sync {
//    blockingPrint(message: "poo1", randomlyAfterSeconds: 1)
//}
//: =========================
PlaygroundPage.current.needsIndefiniteExecution = true
