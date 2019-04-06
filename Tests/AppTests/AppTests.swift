@testable import Vapor
@testable import App
import XCTest

final class AppTests: XCTestCase {
    
    func testNothing() throws {
        // Add your tests here
        var command = CommandInput(arguments: ["testing"])
        let apptest = try! app(.detect())
        XCTAssert(true)
    }

    static let allTests = [
        ("testNothing", testNothing)
    ]
}
