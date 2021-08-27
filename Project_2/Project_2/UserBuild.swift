

import Foundation


class UserBuild {
    var studentName : String!
    var studentAddress : String!
    var studentAge : Int!
    var studentCourses : Set<String>!
    var studentRollNo : Int!
    
    func setStudentName(val: String) {
        self.studentName = val
    }
    
    func setStudentAddress(val: String) {
        self.studentAddress = val
    }
    
    func setStudentAge(val: Int) {
        self.studentAge = val
    }
    
    func setStudentCourses(val: Set<String>) {
        self.studentCourses = val
    }
    
    func setStudentRollNo(val: Int) {
        self.studentRollNo = val
    }
    
    func buildObj() -> User {
        return User(name: self.studentName, address: self.studentAddress, age: studentAge, courses: self.studentCourses, rollno: self.studentRollNo)
    }
}
