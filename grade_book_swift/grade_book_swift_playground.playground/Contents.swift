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
        
        func getAssignment() -> [String: Int] {
            /*
             Function returns a dictionary of assignments
            */
            return self.assignment
        }
    
    func deleteAssignment(assignment: String) {
        /*
         Function deletes assignment from dictionary of student assignments
         Returns nil
        */
        self.assignment.removeValue(forKey: assignment)
    }
    
    func updateAssignment(newAssignmnet: String, oldAssignment: String, grade score: Int) {
        /*
         Function updates assignment
         Returns nil
        */
        self.deleteAssignment(assignment: oldAssignment)
        self.addAssignment(assignment: newAssignmnet, grade: score)
    }
    
    func getGpa() -> Int {
        /*
         Function returns the avg grade for all the assignments
        */
        var result = 0
        for grade in self.assignment.values {
            result += grade
        }
        return result / self.assignment.count
    }
}

var juan = Student(name: "juan", studentId: 1)
juan.getAssignment()
juan.assignment["grade_book"] = 10
juan.assignment["simmulation"] = 10
juan.assignment["moodTracker"] = 10
juan.getGpa()
