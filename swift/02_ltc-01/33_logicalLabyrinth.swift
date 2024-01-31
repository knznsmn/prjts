// Subroutines
func climbStairs() {
    for i in 1 ... 2 {
        moveForward()
    }
}
func turnAround() {
    turnLeft()
    turnLeft()
}
func solveRight() {
    turnRight()
    climbStairs()
    collectGem()
    turnAround()    
    climbStairs()
    turnRight()
}

for i in 1 ... 8 {
    moveForward()
    if isOnGem && isOnClosedSwitch {
        toggleSwitch()
        collectGem()
        solveRight()        
    }
    else if isOnClosedSwitch {
        toggleSwitch()
        turnLeft()
    } else if isOnGem {
        collectGem()        
    } 
}