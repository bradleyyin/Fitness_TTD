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

  // MARK: - When

  fileprivate func whenStartStopPauseCalled() {
    sut.startStopPause(nil)
  }

  // MARK: - Initial State

  func testController_whenCreated_buttonLabelIsStart() {
    // given
    sut.viewDidLoad()

    let text = sut.startButton.title(for: .normal)
    XCTAssertEqual(text, AppState.notStarted.nextStateButtonLabel)
  }

  // MARK: - In Progress

  func testController_whenStartTapped_appIsInProgress() {
    // when
    whenStartStopPauseCalled()

    // then
    let state = AppModel.instance.appState
    XCTAssertEqual(state, AppState.inProgress)
  }

  func testController_whenStartTapped_buttonLabelIsPause() {
    // when
    whenStartStopPauseCalled()

    // then
    let text = sut.startButton.title(for: .normal)
    XCTAssertEqual(text, AppState.inProgress.nextStateButtonLabel)
  }


}
