func navigate() {
    if isBlockedRight && isBlocked || isBlocked {
        turnLeft()
        moveForward()
    }
    else if isBlockedRight {
        moveForward()
    }
    else {
        turnRight()
        moveForward()
    }
}
func toggle() {
    if isOnClosedSwitch {
        toggleSwitch()
    }
}
while !isOnGem {
    navigate()
    toggle()
}
if isOnGem {
    collectGem()
}