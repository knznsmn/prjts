// Navigation
func navigation() {
    if isBlocked && isBlockedRight {
        turnLeft()
        moveForward()
    }
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
func collect() {
    if isOnGem {
        collectGem()
        turnAround()        
    }
}

while !isOnClosedSwitch {
    navigation()
    collect()
}
toggleSwitch()
