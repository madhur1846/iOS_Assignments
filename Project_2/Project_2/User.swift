//
//  User.swift
//  Assignment2
//
//  Created by Madhur Joshi on 21/08/21.
//

import Foundation
class User {
    var studentName : String!
    var studentAddress : String!
    var studentAge : Int!
    var studentCourses : Set<String>!
    var studentRollNo : Int!
    
    init(name:String, address:String, age:Int, courses:Set<String>, rollno:Int) {
        studentName = name
        studentAddress = address
        studentAge = age
        studentRollNo = rollno
        studentCourses = courses
    }
    func getName() -> String {
        return studentName
    }
    func getAddress() -> String {
        return studentAddress
    }
    func getAge() -> Int {
        return studentAge
    }
    func getRollNo() -> Int {
        return studentRollNo
    }
    func getCourses() -> Set<String> {
        return studentCourses
    }
}
