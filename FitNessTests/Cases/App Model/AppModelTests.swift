//
//  AppModelTests.swift
//  FitNessTests
//
//  Created by Bradley Yin on 11/29/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import XCTest
@testable import FitNess

class AppModelTests: XCTestCase {
  var sut: AppModel!

  override func setUp() {
    super.setUp()
    sut = AppModel()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()

  }

//  override func setUpWithError() throws {
//    // Put setup code here. This method is called before the invocation of each test method in the class.
//    super.setUpWithError()
//    sut = AppModel()
//  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  func testAppModel_whenInitialized_isInNotStartedState() {
    let initialState = sut.appState
    XCTAssertEqual(initialState, AppState.notStarted)
  }

  func testAppModel_whenStarted_isInInProgressState() {
    // 1 given app in not started

    // 2 when started
    sut.start()

    // 3 then it is in inProgress
    let observedState = sut.appState
    XCTAssertEqual(observedState, AppState.inProgress)
  }


}
