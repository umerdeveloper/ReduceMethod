// Reduce function
// Returns the result of combining the elements of the sequence using the given closure

// Problem
// I want to calculate total items including replies

struct Comment {
  let message: String
  let replies: [String]
}

var comments = [Comment]()
var totalComments: Int { comments.count }
var totalItems = 0

// Before
var repliesCounter = 0
comments.forEach { comment in 
    let totalReplies = comment.replies.count
    repliesCounter += totalReplies
}
totalItems = totalComments + repliesCounter

// After
let totalRepliesForEachComment = comments.map { $0.replies.count }
let totalReplies = totalRepliesForEachComment.reduce(0, +)
totalItems = totalComments + totalReplies
