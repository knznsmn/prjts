func mowDown() {
    for i in 1 ... 3 {
        moveForward()
    }
    turnRight()
}
while !isBlocked {
    mowDown()
    if isOnClosedSwitch {
        toggleSwitch()
    }
}