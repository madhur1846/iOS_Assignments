//
//  ErrorHandling.swift
//  Assignment2
//
//  Created by Madhur Joshi on 21/08/21.
//

import Foundation

enum Errors: Error {
    case noinput
    case nonInteger
    case nonString
    case invalidType
}

var student = [User]()
var instImpl = Implemtation()
class ErrorHandling {
    func getStudentInst() -> [User] {
        return student
    }
    func errorCheck() {
        do{
            let inst = try instImpl.addDetails(student)
            let userBuild = UserBuild()
            userBuild.setStudentName(val: inst[0] as! String)
            userBuild.setStudentAddress(val: inst[1] as! String)
            userBuild.setStudentAge(val: inst[2] as! Int)
            userBuild.setStudentCourses(val: inst[3] as! Set<String>)
            userBuild.setStudentRollNo(val: inst[4] as! Int)
            let obj = userBuild.buildObj()
            student.append(obj)
        } catch Errors.noinput {
            print("You have not ginven any input")
            errorCheck()
        } catch Errors.nonString {
            print("Value should not be String")
            errorCheck()
        } catch Errors.nonInteger {
            print("value should not be Integer")
            errorCheck()
        } catch Errors.invalidType {
            print("Not a Valid Type")
            errorCheck()
        } catch{
            print("cannot take the Input")
            errorCheck()
        }
    }
}
