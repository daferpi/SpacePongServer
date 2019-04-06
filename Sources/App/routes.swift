import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "hello world"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
    
    // Basic "Hello, world!" example
    router.get("mellamoManolo") { req in
        return "me llamo Manolo"
    }
    
    router.get("users", Int.parameter) { req -> String in
        let id = try req.parameters.next(Int.self)
        
        if id == 3 {
            return "buenos dias"
        }
        return "requested id #\(id)"
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
