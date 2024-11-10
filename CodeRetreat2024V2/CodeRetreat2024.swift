//
//  CodeRetreat2024.swift
//  CodeRetreat2024V2
//
//  Created by Jonás Socas on 10/11/24.
//

let codeLifeRule: [Int: Bool?] = [
    0: false,
    1: false,
    2: nil,
    3: true,
    4: false,
    5: false,
    6: false,
    7: false,
    8: false
]

final class Cell {
    var isAlive: Bool = false
    
    init(isAlive: Bool = false) {
        self.isAlive = isAlive
    }
    
    func switchState(numberOfNeighbours: Int) {
        guard let state = codeLifeRule[numberOfNeighbours], let state else { return }
        isAlive = state || state && isAlive
    }
}

