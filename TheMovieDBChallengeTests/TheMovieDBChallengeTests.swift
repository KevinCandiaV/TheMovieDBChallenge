//
//  TheMovieDBChallengeTests.swift
//  TheMovieDBChallengeTests
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import XCTest
@testable import TheMovieDBChallenge

final class TheMovieDBChallengeTests: XCTestCase {
    var sut: MovieLoginViewController!
    
    override func setUpWithError() throws {
        let viewController: MovieLoginViewController = MovieLoginRouter.createModule() as! MovieLoginViewController
        sut = viewController
        sut.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testLoginTextFieldsAreEmpty() throws {
        let user = try XCTUnwrap(sut.userTextField)
        let password = try XCTUnwrap(sut.passwordTextField)
        
        XCTAssertEqual(user.text, "","El campo email debe estar vacio")
        XCTAssertEqual(password.text, "", "El campo passsword debe estar vacio")
    }
    
    func testLoginUserTextFieldTypeKeyboard() throws {
        let user = try XCTUnwrap(sut.userTextField)
        XCTAssertEqual(user.keyboardType, .emailAddress, "El tipo de teclado debe ser emailAddress")
    }
    
    func testLoginPasswordTextFieldIsSecureEntry() throws {
        let password = try XCTUnwrap(sut.passwordTextField)
        XCTAssertTrue(password.isSecureTextEntry, "El textfield password no contiene entrada segura")
    }

}
