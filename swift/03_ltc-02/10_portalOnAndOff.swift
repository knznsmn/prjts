func turn() {
    turnLeft()
    turnLeft()
}
var gem = 0
var steps = 10
// main

for i in 1 ... 2 {
    for i in 1 ... steps {
        moveForward()
        if isOnGem {
            collectGem()
            gem += 1
        }
        if isBlocked {
            turn()
        }
        if gem != 4 {
            purplePortal.isActive = false
        }
        else {
        purplePortal.isActive = true
        }
        if isOnClosedSwitch {
            toggleSwitch()
        } 
    }
    turn()
    steps -= 2
    
} 
