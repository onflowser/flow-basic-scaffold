

// A simple Person contract 
// 
// reference: https://developers.flow.com/cadence/language/contracts
access(all) contract Person {
    // declaration of a public variable
    access(all) var name: String


    // initialization method for our contracts, this gets run on deployment
    init() {
        self.name = "Alice"

    }

    access(all) fun sayHello(): String {
        return "Hello, my name is ".concat(self.name)
    }

    // create a new friendship resource 
    access(all) fun makeFriends(): @Friendship {
        return <-create Friendship()
    }

    // Friendship resource are types of values that can only exist in one place 
    // 
    // read more about this unique and powerful Cadence feature here https://developers.flow.com/cadence/language/resources
    access(all) resource Friendship {
        init() {}
        access(all) fun yaay() {
            log("such a nice friend") // we can log to output, useful on emualtor for debugging
        }
    }
}


 
