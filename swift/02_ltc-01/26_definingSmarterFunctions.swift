func collectOrToggle() {
    for i in 1 ... 4 {
        moveForward()
        if isOnGem {
            collectGem()
        } else if isOnClosedSwitch {
            toggleSwitch()
        }
    }
}

collectOrToggle()
turnLeft()
moveForward()
moveForward()
turnLeft()
collectOrToggle()
turnRight()
moveForward()
turnRight()
collectOrToggle()