var collectedGem = 0;
var toggledSwitch = 0;


func navigate() {
    moveForward()
    if isBlocked {
        turnRight()
    }
}

// Main
while !isOnClosedSwitch {
    navigate()
    if isOnGem {
        collectGem()
        collectedGem += 1
    }
}
while toggledSwitch < collectedGem {
    if isOnClosedSwitch {
        toggleSwitch()
        toggledSwitch += 1
    }
    navigate()
}