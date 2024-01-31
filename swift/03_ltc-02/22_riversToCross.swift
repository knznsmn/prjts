let n1 = Expert()
world.place(n1, facing: south, atColumn: 1, row: 8)

func move(){
    while !n1.isBlocked {
        if n1.isOnGem{
            n1.collectGem()
        }
        n1.moveForward()
    }
}

func lock(up: Bool) {
    if up {
        n1.turnLockUp()
        n1.turnRight()
            
    }
    else {
        n1.turnLockDown()
        n1.turnLeft()
    }
          
}

// main()
move()
lock(up: false)
move()
lock(up: true)
move()

