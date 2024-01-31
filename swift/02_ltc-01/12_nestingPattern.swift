func turnAround() {
    turnLeft()
    turnLeft()
}

func solveStair() {
    turnLeft()
    moveForward()
    collectGem()
    turnAround()
    moveForward()
} 

solveStair()
solveStair()
solveStair()
solveStair()