//
//  CodeRetreat2024V2Tests.swift
//  CodeRetreat2024V2Tests
//
//  Created by Luzma on 9/11/24.
//

import XCTest
@testable import CodeRetreat2024V2

final class CellIsDeadTests: XCTestCase {
    
    private var cell: Cell!
    
    override func setUp() {
        super.setUp()
        cell = Cell()
    }
    
    override func tearDown() {
        cell = nil
        super.tearDown()
    }
    
    func test_CellDeadWithZeroOneOrTwoNeighbourRemainDead() {
        cell.switchState(numberOfNeighbours: 0)
        XCTAssertFalse(cell.isAlive)
        cell.switchState(numberOfNeighbours: 1)
        XCTAssertFalse(cell.isAlive)
        cell.switchState(numberOfNeighbours: 2)
        XCTAssertFalse(cell.isAlive)
    }
    
    func test_CellDeadWithThreeNeighbourChangeToAlive() {
        cell.switchState(numberOfNeighbours: 3)
        XCTAssert(cell.isAlive)
    }
    
    func test_CellDeadWithFourOrMoreNeighbourStillDeadAndRemainDead() {
        cell.switchState(numberOfNeighbours: 4)
        XCTAssertFalse(cell.isAlive)
        cell.switchState(numberOfNeighbours: 5)
        XCTAssertFalse(cell.isAlive)
        cell.switchState(numberOfNeighbours: 6)
        XCTAssertFalse(cell.isAlive)
        cell.switchState(numberOfNeighbours: 7)
        XCTAssertFalse(cell.isAlive)
        cell.switchState(numberOfNeighbours: 8)
        XCTAssertFalse(cell.isAlive)
    }
}

final class CellIsAliveTests: XCTestCase {
    
    private var cell: Cell!
    
    override func setUp() {
        super.setUp()
        cell = Cell()
        cell.switchState(numberOfNeighbours: 3)
    }
    
    override func tearDown() {
        cell = nil
        super.tearDown()
    }
    
    func test_CellAliveWithZeroOrOneNeighbourShouldDeadOrRemainDead() {
        cell.switchState(numberOfNeighbours: 0)
        XCTAssertFalse(cell.isAlive)
        cell.switchState(numberOfNeighbours: 1)
        XCTAssertFalse(cell.isAlive)
    }
    
    func test_CellAliveWithTwoOrThreeNeighbourRemainAlive() {
        cell.switchState(numberOfNeighbours: 2)
        XCTAssert(cell.isAlive)
        cell.switchState(numberOfNeighbours: 3)
        XCTAssert(cell.isAlive)
    }
    
    func test_CellAliveWithFourOrMoreNeighbourShouldDeadOrRemainDed() {
        cell.switchState(numberOfNeighbours: 4)
        XCTAssertFalse(cell.isAlive)
        cell.switchState(numberOfNeighbours: 5)
        XCTAssertFalse(cell.isAlive)
        cell.switchState(numberOfNeighbours: 6)
        XCTAssertFalse(cell.isAlive)
        cell.switchState(numberOfNeighbours: 7)
        XCTAssertFalse(cell.isAlive)
        cell.switchState(numberOfNeighbours: 8)
        XCTAssertFalse(cell.isAlive)
    }
}
