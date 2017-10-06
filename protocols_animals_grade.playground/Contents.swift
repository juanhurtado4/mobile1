
import UIKit
import PlaygroundSupport


// Problem #1
// Modeling Data (Structs, Enums, Classes)
// We want to represent Students and Courses
// Students have a list of courses that they take
// Courses also have a list of students
// Write a function in courses that prints out the names of all the students in a course
// Write an instance of student with a list of courses and an instance of course that has a list of students
// Test out the function in course that prints out its list of students

struct Student {
    var studentName : String
    var courses: [Course]
}

struct Course {
    var courseName: String
    var listOfStudents: [Student]

    func getAllStudents() {
        for student in listOfStudents {
            print(student.studentName)
        }
    }
}

var firstStudent = Student(studentName: "Juan", courses: [])
var secondStudent = Student(studentName: "Uchenna", courses: [])
var thirdStudent = Student(studentName: "Jose", courses: [])

var course = Course(courseName: "Mob1", listOfStudents: [firstStudent, secondStudent, thirdStudent])

firstStudent.courses = [course]
print(firstStudent.courses[0].courseName)

course.getAllStudents()

// Problem #2
// Protocols & Modeling (Structs, Enums, Classes)
/*:
 We need to model different types of Animals in the animal kindom
 a. Animals need to have a species
 b. All Animals need to eat food
 c. Some Animals can Jump, some can Fly
 d. Create instance of 3 animals with different species, some can fly, can jump, some can fly and jump
 e. Put them in an array and print out animals than can only fly
*/
print("-----------------")
enum FoodType {
    case meat
    case grass
}

protocol Animal {
    var species: String {get set}
    
    func eat(food: FoodType) -> String
}

protocol Fly {
    func fly() -> String
}

protocol Jump {
    func Jump() -> String
}

struct AerialAnimal: Animal, Fly {
    var species: String
    
    func eat(food: FoodType) -> String {
        return "This \(species) eats \(food)"
    }
    
    func fly() -> String {
        return "This \(species) can fly"
    }
    
}

struct LandAnimal: Animal, Jump {
    var species: String
    
    func eat(food: FoodType) -> String {
        return "This \(species) eats \(food)"
    }
    
    func Jump() -> String {
        return "This \(species) can jump"
    }
}

var pelican = AerialAnimal(species: "Bird")
print(pelican.species)
print(pelican.fly())
print(pelican.eat(food: FoodType.grass))
print("-------------------------------")

var tiger = LandAnimal(species: "Cat")
print(tiger.species)
print(tiger.Jump())
print(tiger.eat(food: FoodType.meat))

// Delegates Review
/*:
 
*/


//protocol MeansOfCommunicatingBetweenSenderAndReciever {
//    func senderSent(something: String)
//}
//
//struct Sender {
//    var delegate: MeansOfCommunicatingBetweenSenderAndReciever?
//
//    func somethingHappened() {
//        //Some action I want to send
//        delegate?.senderSent(something: "Hey")
//    }
//}
//
//struct Reciever: MeansOfCommunicatingBetweenSenderAndReciever {
//
//    func senderSent(something: String) {
//        print(something)
//    }
//}

//var sender = Sender()
//let reciever = Reciever()
//
//sender.delegate = reciever
//
//sender.somethingHappened()


// Problem #3
/*
 You have a UIView called touchable view that handles a tap.
 a. Write a delegate that delegates the touch action to another view/viewcontroller (SomeViewController)
 
 b. Draw a diagram for the delegation between the TouchableView and the ViewController
*/
class TouchableView: UIView {
    
    let touchGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(tap:)))
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addGestureRecognizer(touchGesture)
        
    }
    
    @objc func handleTap(tap: UITapGestureRecognizer) {
        print("Tapped")
    }
}

let touchView = TouchableView(
    frame: CGRect(x: 0, y: 0, width: 100, height: 100)
)

touchView.backgroundColor = UIColor.red

// ViewController that will recieve taps
class SomeViewController: UIViewController {
    
    let touchableView = touchView
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}



let vc = SomeViewController()



// Implement Delegation from problem #3


// Extra material to make playground work
PlaygroundPage.current.liveView = touchView
