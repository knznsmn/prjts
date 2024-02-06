func collect(prem: Bool) {
    if prem {
        if n1.isOnGem {
            n1.collectGem()
        }
    }
    else {
        if n2.isOnGem {
            n2.collectGem()
        }
    }
}

func turn(prem: Bool, times: Int) {
    if prem {
        for i in 1 ... times {
            n1.turnLeft()
        }
    }
    else {
        for i in 1 ... times {
            n2.turnRight()
        }
    }
}

func move(prem: Bool) {
    if prem {
        while !n1.isBlocked {
            collect(prem: true)
            n1.moveForward()
        }
    }
    else {
        while !n2.isBlocked {
            collect(prem: false)
            n2.moveForward()
        }
    }
}

// Declare the experts
let n1 = Expert()
let n2 = Expert()

world.place(n1, facing: north, atColumn: 0, row: 4)
world.place(n2, facing: north, atColumn: 3, row: 0)

// Turn the lever up
n2.turnLock(up: true, numberOfTimes: 2)
// Turn the yellow platform down
n1.turnLock(up: false, numberOfTimes: 1)

n2.turnRight()
move(prem: false)
n2.turnLock(up: false, numberOfTimes: 2)

n1.turnRight()
move(prem: true)
turn(prem: true, times: 2)
// Now comes back to the yellow lock
move(prem: true)
turn(prem: true, times: 3)

// Let N2 Walks towards the yellow platform
turn(prem: false, times: 2)
move(prem: false)

// Turn the yello platform back up
n1.turnLock(up: true, numberOfTimes: 1)

// Now let N2 collect the last gem
move(prem: false)
collect(prem: false)

