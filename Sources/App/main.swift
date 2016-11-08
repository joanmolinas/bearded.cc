import Vapor

let drop = Droplet()

/*drop.get { req in
    return try drop.view.make("welcome", [
    	"message": drop.localization[req.lang, "welcome", "title"]
    ])
}

drop.resource("posts", PostController())*/

drop.get("/name",":name") { request in
    if let name = request.parameters["name"]?.string {
        return "Hello \(name)"
    }
    return "Error retrieving name"
}

drop.run()
