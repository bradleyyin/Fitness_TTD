//
//  StepCountControllerTests.swift
//  FitNessTests
//
//  Created by Bradley Yin on 11/29/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import XCTest
@testable import FitNess


class StepCountControllerTests: XCTestCase {
  var sut: StepCountController!

  override func setUp() {
    super.setUp()
    sut = StepCountController()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testController_whenStartTapped_appIsInProgress() {
    // when
    sut.startStopPause(nil)

    // then
    let state = AppModel.instance.appState
    XCTAssertEqual(state, AppState.inProgress)
  }

  func testController_whenStartTapped_buttonLabelIsPause() {
    // when
    sut.startStopPause(nil)

    // then
    let text = sut.startButton.title(for: .normal)
    XCTAssertEqual(text, AppState.inProgress.nextStateButtonLabel)
  }


}
