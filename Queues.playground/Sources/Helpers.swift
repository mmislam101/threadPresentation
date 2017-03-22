import Foundation

public func blockingPrint(message: String, randomlyAfterSeconds seconds: Int) {
    usleep(useconds_t(randomBetweenInt(lower: 0, upper: seconds * 1000000)))
    print(message)
}

public func blockingPrint(message: String, afterSeconds seconds: TimeInterval) {
    usleep(useconds_t(seconds * 1000000))
    print(message)
}

public func randomBetweenFloats(firstNum: Float, secondNum: Float) -> Float{
    return Float(arc4random()) / Float(UINT32_MAX) * abs(firstNum - secondNum) + min(firstNum, secondNum)
}

public func randomBetweenInt(lower: Int , upper: Int) -> Int {
    return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
}
