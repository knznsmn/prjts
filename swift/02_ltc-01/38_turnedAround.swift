func corner() {
    for i in 1 ... 2 {
        moveForward()
        collectGem()
        turnLeft()        
    }
}
func turn() {
    moveForward()
    turnRight()    
}

for i in 1 ... 4 {
    corner()
    turn()
}