greenPortal.isActive = false
for i in 1 ... 3 {
    moveForward()
}
for i in 1 ... 3 {
    turnLeft()
    for i in 1 ... 3 {
        moveForward()
    }
    toggleSwitch()
    for i in 1 ... 2 {
        turnLeft()
    }
    for i in 1 ... 3 {
        moveForward()
    }
}