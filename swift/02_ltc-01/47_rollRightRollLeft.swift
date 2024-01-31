func collect() {
    if isOnGem {
        collectGem()
        moveForward()
        collectGem()        
    }
    else if isOnClosedSwitch {
        if isBlocked {
            turnLeft()
        }
        for i in 1 ... 2 {
            toggleSwitch()
            moveForward()
        }
    }
}
func move() {
    while !isBlocked {
        moveForward()
    }
    if isBlockedRight {
        turnLeft()
    }
    else if isBlockedLeft {
        turnRight()        
    }
}
while !isOnOpenSwitch {
    move()
    collect()
}
