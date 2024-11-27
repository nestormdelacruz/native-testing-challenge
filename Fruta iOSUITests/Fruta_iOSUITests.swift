//
//  Fruta_iOSUITests.swift
//  Fruta iOSUITests
//
//  Created by Hugo Landines on 01/10/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

final class Fruta_iOSUITests: XCTestCase {
    
    struct Smoothy: Codable {
        let id, title, calories, ingredients: String
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()

        app.launch()
    }
    
    @MainActor
    func testExerciseOne() throws {
        let app = XCUIApplication()
        app.launch()
        
        // Berry Blue
        XCTAssert(app.images["image-berry-blue"].exists)
        XCTAssertEqual(app.staticTexts["title-berry-blue"].label, "Berry Blue")
        XCTAssertEqual(app.staticTexts["ingredients-berry-blue"].label, "Ingredients: Orange, blueberry, and avocado.")
        XCTAssertEqual(app.staticTexts["energy-berry-blue"].label, "520 Calories")
        
        // Carrot Chops
        XCTAssert(app.images["image-carrot-chops"].exists)
        XCTAssertEqual(app.staticTexts["title-carrot-chops"].label, "Carrot Chops")
        XCTAssertEqual(app.staticTexts["ingredients-carrot-chops"].label, "Ingredients: Orange, carrot, and mango.")
        XCTAssertEqual(app.staticTexts["energy-carrot-chops"].label, "230 Calories")
        
        // Hulking Lemonade
        XCTAssert(app.images["image-hulking-lemonade"].exists)
        XCTAssertEqual(app.staticTexts["title-hulking-lemonade"].label, "Hulking Lemonade")
        XCTAssertEqual(app.staticTexts["ingredients-hulking-lemonade"].label, "Ingredients: Lemon, spinach, and avocado.")
        XCTAssertEqual(app.staticTexts["energy-hulking-lemonade"].label, "170 Calories")
        
        // Kiwi Cutie
        XCTAssert(app.images["image-kiwi-cutie"].exists)
        XCTAssertEqual(app.staticTexts["title-kiwi-cutie"].label, "Kiwi Cutie")
        XCTAssertEqual(app.staticTexts["ingredients-kiwi-cutie"].label, "Ingredients: Kiwi, orange, and spinach.")
        XCTAssertEqual(app.staticTexts["energy-kiwi-cutie"].label, "210 Calories")
        
        // Lemonberry
        XCTAssert(app.images["image-lemonberry"].exists)
        XCTAssertEqual(app.staticTexts["title-lemonberry"].label, "Lemonberry")
        XCTAssertEqual(app.staticTexts["ingredients-lemonberry"].label, "Ingredients: Raspberry, strawberry, and lemon.")
        XCTAssertEqual(app.staticTexts["energy-lemonberry"].label, "140 Calories")
        
        app.swipeUp(velocity: 500)

        // Love You Berry Much
        XCTAssert(app.images["image-love-you-berry-much"].exists)
        XCTAssertEqual(app.staticTexts["title-love-you-berry-much"].label, "Love You Berry Much")
        XCTAssertEqual(app.staticTexts["ingredients-love-you-berry-much"].label, "Ingredients: Strawberry, blueberry, and raspberry.")
        XCTAssertEqual(app.staticTexts["energy-love-you-berry-much"].label, "210 Calories")
        
        // Mango  Jambo
        XCTAssert(app.images["image-mango-jambo"].exists)
        XCTAssertEqual(app.staticTexts["title-mango-jambo"].label, "Mango Jambo")
        XCTAssertEqual(app.staticTexts["ingredients-mango-jambo"].label, "Ingredients: Mango and pineapple.")
        XCTAssertEqual(app.staticTexts["energy-mango-jambo"].label, "140 Calories")
        
        // One in a Melon
        XCTAssert(app.images["image-one-in-a-melon"].exists)
        XCTAssertEqual(app.staticTexts["title-one-in-a-melon"].label, "One in a Melon")
        XCTAssertEqual(app.staticTexts["ingredients-one-in-a-melon"].label, "Ingredients: Watermelon and raspberry.")
        XCTAssertEqual(app.staticTexts["energy-one-in-a-melon"].label, "130 Calories")
        
        // Papa's Papaya
        XCTAssert(app.images["image-papas-papaya"].exists)
        XCTAssertEqual(app.staticTexts["title-papas-papaya"].label, "Papa's Papaya")
        XCTAssertEqual(app.staticTexts["ingredients-papas-papaya"].label, "Ingredients: Orange, mango, and papaya.")
        XCTAssertEqual(app.staticTexts["energy-papas-papaya"].label, "210 Calories")
        
        // Peanut Buttter Cup
        XCTAssert(app.images["image-peanut-butter-cup"].exists)
        XCTAssertEqual(app.staticTexts["title-peanut-butter-cup"].label, "Peanut Butter Cup")
        XCTAssertEqual(app.staticTexts["ingredients-peanut-butter-cup"].label, "Ingredients: Almond Milk, banana, chocolate, and peanut butter.")
        XCTAssertEqual(app.staticTexts["energy-peanut-butter-cup"].label, "460 Calories")
        
        app.swipeUp(velocity: 500)

        // Pina y Coco
        XCTAssert(app.images["image-pina-y-coco"].exists)
        XCTAssertEqual(app.staticTexts["title-pina-y-coco"].label, "Piña y Coco")
        XCTAssertEqual(app.staticTexts["ingredients-pina-y-coco"].label, "Ingredients: Pineapple, almond milk, and coconut.")
        XCTAssertEqual(app.staticTexts["energy-pina-y-coco"].label, "320 Calories")
        
        // Sailor Man
        XCTAssert(app.images["image-sailor-man"].exists)
        XCTAssertEqual(app.staticTexts["title-sailor-man"].label, "Sailor Man")
        XCTAssertEqual(app.staticTexts["ingredients-sailor-man"].label, "Ingredients: Orange and spinach.")
        XCTAssertEqual(app.staticTexts["energy-sailor-man"].label, "170 Calories")
        
        // That's a Smore!
        XCTAssert(app.images["image-thats-a-smore"].exists)
        XCTAssertEqual(app.staticTexts["title-thats-a-smore"].label, "That's a Smore!")
        XCTAssertEqual(app.staticTexts["ingredients-thats-a-smore"].label, "Ingredients: Almond Milk, coconut, and chocolate.")
        XCTAssertEqual(app.staticTexts["energy-thats-a-smore"].label, "240 Calories")
        
        app.swipeUp(velocity: 500)
        
        // That's Berry Bananas
        XCTAssert(app.images["image-thats-berry-bananas"].exists)
        XCTAssertEqual(app.staticTexts["title-thats-berry-bananas"].label, "That's Berry Bananas!")
        XCTAssertEqual(app.staticTexts["ingredients-thats-berry-bananas"].label, "Ingredients: Almond Milk, banana, and strawberry.")
        XCTAssertEqual(app.staticTexts["energy-thats-berry-bananas"].label, "580 Calories")
        
        // Tropical Blue
        XCTAssert(app.images["image-tropical-blue"].exists)
        XCTAssertEqual(app.staticTexts["title-tropical-blue"].label, "Tropical Blue")
        XCTAssertEqual(app.staticTexts["ingredients-tropical-blue"].label, "Ingredients: Almond Milk, banana, blueberry, and mango.")
        XCTAssertEqual(app.staticTexts["energy-tropical-blue"].label, "490 Calories")
    }
    
    @MainActor
    func testExerciseTwo() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.searchFields.element.tap()
        app.searchFields.element.typeText("hulking")
        app.buttons["hulking-lemonade"].doubleTap()
        app.swipeUp()
        XCTAssertEqual(app.staticTexts["description-hulking-lemonade"].label, "This is not just any lemonade. It will give you powers you'll struggle to control!")
        app.navigationBars.buttons.element(boundBy: 0).tap()
        app.searchFields.element.doubleTap()
        app.searchFields.element.typeText("tropical")
        app.buttons["tropical-blue"].doubleTap()
        app.swipeUp()
        XCTAssertEqual(app.staticTexts["description-tropical-blue"].label, "A delicious blend of tropical fruits and blueberries will have you sambaing around like you never knew you could!")
    }
    
    @MainActor
    func testExerciseThreeA() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.tabBars.buttons.element(boundBy: 1).doubleTap()
        XCTAssertEqual(app.staticTexts["empty-favorites-message"].label, "Add some smoothies to your favorites!")

    }
    
    @MainActor
    func testExerciseThreeB() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.searchFields.element.tap()
        app.buttons["berry-blue"].doubleTap()
        app.buttons["favorite-button-berry-blue"].tap()
        app.navigationBars.buttons.element(boundBy: 0).tap()
        app.tabBars.buttons.element(boundBy: 1).doubleTap()

        //XCTAssert(cells.images["berry-blue"].exists, "Berry Blue image is displayed")
        XCTAssertEqual(app.staticTexts["title-berry-blue"].label, "Berry Blue")
        XCTAssertEqual(app.staticTexts["ingredients-berry-blue"].label, "Ingredients: Orange, blueberry, and avocado.")
        XCTAssertEqual(app.staticTexts["energy-berry-blue"].label, "520 Calories")

    }
    
    @MainActor
    func testExerciseFour() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.searchFields.element.tap()
        app.searchFields.element.typeText("orange")
        app.searchFields.element.tap()
        
        // Berry Blue
        XCTAssertEqual(app.staticTexts["title-berry-blue"].label, "Berry Blue")
        XCTAssertEqual(app.staticTexts["ingredients-berry-blue"].label, "Ingredients: Orange, blueberry, and avocado.")
        XCTAssertEqual(app.staticTexts["energy-berry-blue"].label, "520 Calories")
        
        // Carrot Chops
        XCTAssertEqual(app.staticTexts["title-carrot-chops"].label, "Carrot Chops")
        XCTAssertEqual(app.staticTexts["ingredients-carrot-chops"].label, "Ingredients: Orange, carrot, and mango.")
        XCTAssertEqual(app.staticTexts["energy-carrot-chops"].label, "230 Calories")
        
        // Kiwi Cutie
        XCTAssertEqual(app.staticTexts["title-kiwi-cutie"].label, "Kiwi Cutie")
        XCTAssertEqual(app.staticTexts["ingredients-kiwi-cutie"].label, "Ingredients: Kiwi, orange, and spinach.")
        XCTAssertEqual(app.staticTexts["energy-kiwi-cutie"].label, "210 Calories")
        
        // Papa's Papaya
        XCTAssertEqual(app.staticTexts["title-papas-papaya"].label, "Papa's Papaya")
        XCTAssertEqual(app.staticTexts["ingredients-papas-papaya"].label, "Ingredients: Orange, mango, and papaya.")
        XCTAssertEqual(app.staticTexts["energy-papas-papaya"].label, "210 Calories")
        
        // Sailor Man
        XCTAssertEqual(app.staticTexts["title-sailor-man"].label, "Sailor Man")
        XCTAssertEqual(app.staticTexts["ingredients-sailor-man"].label, "Ingredients: Orange and spinach.")
        XCTAssertEqual(app.staticTexts["energy-sailor-man"].label, "170 Calories")
    }
    
    
    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }

}
    
