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
            let a = User(inst[0] as! String,inst[1] as! String,inst[2] as! Int,inst[3] as! Set<String>,inst[4] as! Int)
            student.append(a)
        } catch Errors.noinput {
            print("You have not ginven any input")
        } catch Errors.nonString {
            print("Value should not be String")
        } catch Errors.nonInteger {
            print("value should not be Integer")
        } catch Errors.invalidType {
            print("Not a Valid Type")
        } catch{
            print("cannot take the Input")
        }
    }
}
