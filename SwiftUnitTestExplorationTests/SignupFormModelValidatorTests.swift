//
//  SignupFormModelValidator.swift
//  SwiftUnitTestExplorationTests
//
//  Created by Ayodejii Ayankola on 29/10/2021.
//

import XCTest
@testable import SwiftUnitTestExploration

class SignupFormModelValidatorTests: XCTestCase {
    
    var sut: SignupFormModelValidator!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = SignupFormModelValidator()
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testSignupFormModelValidator_WhenValidFirstNameIsProvided_ShouldReturnTrue() {
        // Create a structure
        
        // Arrange - system under test - sut
        // Act
       let isFirstNameValid =  sut.isFirstNameValid(firstName: "Ayodeji")
        
        
        // Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() Should have returned TRUE for a valid first name but returned FALSE")
    }
    
    
    func testSignupFormModelValidator_WhenTooShortFirstNameIsProvided_ShouldReturnFalse(){
        //Arrange
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "A")
        //Assert
        XCTAssertFalse(isFirstNameValid, "he isFirstNameValid() Should have returned FALSE for a first name that is shorter than 2 characters but it has returned TRUE")
    }

}
