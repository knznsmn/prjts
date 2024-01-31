func collectOrToggle() {
    moveForward()
    if isOnGem {
        collectGem()
    } else if isOnClosedSwitch {
        toggleSwitch()
    }
}
func cuttingCorners() {
    for i in 1 ... 3 {
        turnLeft()
        collectOrToggle()
        collectOrToggle()
    }    
}
collectOrToggle()
turnLeft()
collectOrToggle()
cuttingCorners()