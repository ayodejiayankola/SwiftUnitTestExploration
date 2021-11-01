//
//  SignupFormModelValidator.swift
//  SwiftUnitTestExploration
//
//  Created by Ayodejii Ayankola on 29/10/2021.
//

import Foundation

class SignupFormModelValidator {
    
//    func isFirstNameValid(firstName: String) -> Bool {
//        var returnValue =  true
//        if firstName.isEmpty {
//            returnValue = false
//        }
//        return returnValue
//    }
    
//    func isFirstNameValid(firstName: String) -> Bool {
//        var returnValue =  true
//        if firstName.count <  2  {
//            returnValue = false
//        }
//        return returnValue
//    }
    
    func isFirstNameValid(firstName:String) -> Bool {
        var returnValue = true
        if firstName.count <  SignupConstants.firstNameMinLength  || firstName.count > SignupConstants.firstNameMaxLength {
            returnValue = false
        }
        return returnValue
    }
}
