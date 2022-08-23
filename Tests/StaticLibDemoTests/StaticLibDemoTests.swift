import XCTest
@testable import StaticLib

final class StaticLibDemoTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(StaticLibDemo().text, "Hello, World!")
    }
    
    func testResourceRead() throws {
        let res = StaticLibDemo().getResource()

        XCTAssertEqual(res, ["ID": Optional("SGML"), "Acronym": Optional("SGML"), "GlossTerm": Optional("Standard Generalized Markup Language"), "SortAs": Optional("SGML"), "title": Optional("example glossary"), "Abbrev": Optional("ISO 8879:1986")])
    }
}
