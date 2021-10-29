//
//  SignupFormModelValidator.swift
//  SwiftUnitTestExplorationTests
//
//  Created by Ayodejii Ayankola on 29/10/2021.
//

import XCTest
@testable import SwiftUnitTestExploration

class SignupFormModelValidatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignupFormModelValidator_WhenValidFirstNameIsProvided_ShouldReturnTrue() {
        // Create a structure
        
        // Arrange - system under test - sut
        let sut = SignupFormModelValidator()
        // Act
       let isFirstNameValid =  sut.isFirstNameValid(firstName: "Ayodeji")
        
        
        // Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() Should have returned TRUE for a valid first name but returned FALSE")
        
        let isFirstNameNotShort = sut.isFirstNameNotShort(firstName: "Deji")
      
        XCTAssertTrue(isFirstNameNotShort, "The isFirstNameNotShort() Should have returned TRUE for a valid first name but returned FALSE")
    }

}
