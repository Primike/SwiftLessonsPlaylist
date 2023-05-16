//
//  UITestingTests.swift
//  SwiftLessonsUITests
//
//  Created by Prince Avecillas on 5/16/23.
//

import XCTest

final class UITestingTests: XCTestCase {

    func testAddNoiseMaker() {
        
        let app = XCUIApplication()
        app.launch()
        
        let newNameButton = app.navigationBars["Noise Makers"].buttons["Add"]
        let nameField = app.alerts["Add Noise Maker"].scrollViews.otherElements.collectionViews.textFields["Shaggy"]
        let addButton = app.alerts["Add Noise Maker"].scrollViews.otherElements.buttons["Add"]
        let addedCell = app.tables.staticTexts["Chungus"]
        
        newNameButton.tap()
        nameField.tap()
        nameField.typeText("Chungus")
        
        XCTAssertFalse(addedCell.exists)
        
        addButton.tap()
        
        XCTAssert(addedCell.exists)
    }
    
    func testDeleteNoiseMaker() {
        
        let app = XCUIApplication()
        app.launch()
        
        let newNameButton = app.navigationBars["Noise Makers"].buttons["Add"]
        let nameField = app.alerts["Add Noise Maker"].scrollViews.otherElements.collectionViews.textFields["Shaggy"]
        let addButton = app.alerts["Add Noise Maker"].scrollViews.otherElements.buttons["Add"]
        let addedCell = app.tables.staticTexts["Doge"]
        let tablesQuery = app.tables
        let deleteButton = tablesQuery/*@START_MENU_TOKEN@*/.buttons["Delete"]/*[[".cells.buttons[\"Delete\"]",".buttons[\"Delete\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        
        newNameButton.tap()
        nameField.tap()
        nameField.typeText("Doge")
        addButton.tap()
        
        addedCell.swipeLeft()
        deleteButton.tap()
        
        XCTAssertFalse(addedCell.exists)
    }
}
