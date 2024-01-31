// Navigate around the wall
func navigate() {
    if isBlockedRight {
        moveForward()
    }
    else {
        turnRight()
        moveForward()
    }
}
func turnAround() {
    turnLeft()
    turnLeft()
}
// Collect or Toggle
func collect() {
    if isOnGem {
        collectGem()
        turnAround()
    }
}

// Main program
while !isOnClosedSwitch {
    navigate()
    collect()
}
if isOnClosedSwitch {
    toggleSwitch()
}