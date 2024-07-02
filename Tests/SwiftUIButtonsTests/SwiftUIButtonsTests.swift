import XCTest
import SwiftUI
@testable import SwiftUIButtons

final class SwiftUIButtonsTests: XCTestCase {
    private var app: XCUIApplication!
      
      override func setUpWithError() throws {
          continueAfterFailure = false
          app = XCUIApplication()
          app.launch()
      }
      
      override func tearDownWithError() throws {
          app = nil
      }

      func testButtonClickChangesText() throws {
          let button = app.buttons["clickButton"]
          XCTAssertTrue(button.exists)
          button.tap()

          let resultText = app.staticTexts["resultText"]
          XCTAssertTrue(resultText.exists)
          XCTAssertEqual(resultText.label, "Button clicked!")
      }

}
