
func turn() {
    turnLeft()
    turnLeft()
}

func halfCross() {
    moveForward()
    if isOnGem {
        collectGem()
        turn()
    }
    else if isOnClosedSwitch {
        toggleSwitch()
        turn()
    }
    moveForward()
    if isBlockedRight {
        turnLeft()
    }
    else {
    turnRight()
    }
}
func togglePortal() {
    if greenPortal.isActive {
        greenPortal.isActive = false
        orangePortal.isActive = true
    }
    else {
        greenPortal.isActive = true
        orangePortal.isActive = false
    }
}
func wing() {
    moveForward()
    togglePortal()
    moveForward()
    halfCross()
    togglePortal()
    halfCross()
    togglePortal()
    for i in 1 ... 3{
        halfCross()
    }
}

// Main
turnLeft()

// Solving the first cross
wing()
togglePortal()
halfCross()
togglePortal()

// Starts toward the second half cross
for i in 1 ... 2 {
    moveForward()
}

// Solving the second cross
wing()
halfCross()
