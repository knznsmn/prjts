for i in 1 ... 16 {
    if !isBlocked {
        moveForward()
        if isOnClosedSwitch {
            toggleSwitch()
        }
    } 
    else {
        turnLeft()
    }
}