while !isBlocked {
    while !isOnClosedSwitch {
        moveForward()
        if isBlocked {
            turnRight()
        }
    }
    if isOnClosedSwitch {
        toggleSwitch()
    }
}