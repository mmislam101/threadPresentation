import UIKit
import Foundation
import PlaygroundSupport

/*: 
 ## Thread
 [Creating Threads](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/Multithreading/CreatingThreads/CreatingThreads.html)
*/
//let thread = Thread {
//    print("monkey")
//}
//thread.start()

/*:
 ## Run Loop
 [Run Loop Management](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/Multithreading/RunLoopManagement/RunLoopManagement.html)
 */
//let timer = Timer(timeInterval: 1.0, repeats: true) { timer in
//    print("poop")
//}
//let runner = RunLoop.current
//runner.add(timer, forMode: RunLoopMode.defaultRunLoopMode)

/*:
 ## Queues
 [Dispatch Queues](https://developer.apple.com/library/content/documentation/General/Conceptual/ConcurrencyProgrammingGuide/OperationQueues/OperationQueues.html)
 */
//: ### Example of using a blocking queue
//print("moop")
//DispatchQueue.global().sync {
//    blockingPrint(message: "bloop", afterSeconds: 1)
//}
//print("woop")

//: ### Using a non-blocking/asynchronous queue
//print("moop")
//DispatchQueue.global().async {
//    blockingPrint(message: "bloop", afterSeconds: 1)
//}
//print("woop")

//: ### Using concurrent queue asynchronously/non-blocking
//DispatchQueue.global().async {
//    blockingPrint(message: "poo1", randomlyAfterSeconds: 1)
//}
//
//DispatchQueue.global().async {
//    blockingPrint(message: "poo2", randomlyAfterSeconds: 1)
//}
//
//DispatchQueue.global().async {
//    blockingPrint(message: "poo3", randomlyAfterSeconds: 1)
//}

//: ### Using consecutive/serial main Queue asynchronously
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



PlaygroundPage.current.needsIndefiniteExecution = true
