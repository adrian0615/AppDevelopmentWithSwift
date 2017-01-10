struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        // TODO: Write a response 
        if question.lowercased().hasSuffix("my name?") {
            return "Adrian"
        } else if question.lowercased().hasSuffix("are the cookies?") {
            return "In the cookie jar."
        } else if question.lowercased().hasPrefix("where should") {
            return "Miami."
        } else if question.lowercased().hasPrefix("where") {
            return "Use Google Maps."
        } else if question.lowercased().hasPrefix("should") {
            return "I don't think so."
        } else if question.lowercased().hasPrefix("can") {
            return "I don't know. Can you?"
        } else if question.lowercased().hasPrefix("hello") {
            return "Howdy!"
        } else {
            return "I don't know."
        }
    }
}
