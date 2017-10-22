import UIKit

class Student {
    
    // MARK: STUDENT PROPERTIES
    var name: String
    let studentId: Int
    var assignment = [String:  Int]()
    
    init(name: String, studentId: Int) {
        self.name = name
        self.studentId = studentId
    }
    
    // MARK: STUDENT FUNCTIONS
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


class Classroom {
    // MARK: CLASSROOM PROPERTIES
    var className: String
    var roster = [Int: Student]()
    
    init(className: String) {
        self.className = className
    }
    
    // MARK: CLASSROOM FUNCTIONS
    func getGpa() -> Int {
        /*
         Returns the avg grade for the entire class_name
         based on each individual student grades
        */
        var final = 0
        if self.roster.count != 0 {
            for student in self.roster.values {
                final += student.getGpa()
            }
            return final / roster.count
    
        }else {
            return 0
        }
    }
    
    func addStudentAssignments(assignment: String, grade score: Int, studentId: Int? = nil) {
        /*
        Function adds student assignment to individual student if student id provide
        If not it will add assignment to all students
        Returns nil
        */
        
        if let id = studentId {
            self.roster[id]?.addAssignment(assignment: assignment, grade: score)
        }else {
            for student in self.roster.keys {
                self.roster[student]?.addAssignment(assignment: assignment, grade: score)
            }
        }
    }
    
    func deleteStudentAssignment(student: Student, assignment: String) {
        /*
         Functions deletes assignmentj
         Returns nil
        */
        student.deleteAssignment(assignment: assignment)
    }
    
    func addStudent(student: Student) {
        /*
        Function adds student to dictionary of roster
        Returns nil
        */
        self.roster[student.studentId] = student
    }
    
    func removeStudent(student: Student) {
        /*
         Function removes student from dictionary of roster
         Returns nil
         */
        self.roster.removeValue(forKey: student.studentId)
    }
    
}








/* Testing
var computerScience101 = Classroom(className: "cs1")
var juan = Student(name: "juan", studentId: 1)
var jose = Student(name: "jose", studentId: 2)

juan.addAssignment(assignment: "gradeBook", grade: 85)
jose.addAssignment(assignment: "gradeBook", grade: 85)

computerScience101.addStudent(student: juan)
computerScience101.addStudent(student: jose)
computerScience101.getGpa()
*/
