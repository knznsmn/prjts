func toggle() {
    if isOnClosedSwitch {
        toggleSwitch()
        moveForward()
    }
    else if isOnOpenSwitch {
        moveForward()
    }
}
func collect() {
    if isOnGem {
        collectGem()
        moveForward()
    }
}
func mow() {
    turnRight()
    toggle()
    collect()
    turnLeft()
    toggle()
    turnLeft()
    toggle()
    collect()
    turnRight()
    moveForward()
}
moveForward()
while !isBlocked {
    mow()
}