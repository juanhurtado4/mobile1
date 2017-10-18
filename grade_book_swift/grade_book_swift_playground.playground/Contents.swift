import UIKit

class Student {
    
    // MARK: PROPERTIES
    var name: String
    let studentId: Int
    var assignment = [String:  Int]()
    
    init(name: String, studentId: Int) {
        self.name = name
        self.studentId = studentId
    }
    
        func addAssignment(assignment: String, grade: Int) {
            /*
             Function adds new assignment to the dictionary of assignments
             Returns nil
             */
            self.assignment[assignment] = grade
        }
        
        func get_assignment() -> [String: Int] {
            /*
             Function returns a dictionary of assignments
             */
            // TODO: Research how to return key value pairs in a dictionary
            return self.assignment
        }
}
