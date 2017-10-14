//
//  Created by acecilia on 10/14/2017.
//  Copyright (c) 2017 acecilia. All rights reserved.
//

import UIKit
import XCTest
import SugarEdges

class Tests: XCTestCase {
    
    func testCompleteInit() {
        let value: CGFloat = 10
        
        let normalInit: UIEdgeInsets = UIEdgeInsets(top: value, left: value, bottom: value, right: value)
        let sugarEdgesInit: UIEdgeInsets = [.top: value, .left: value, .bottom: value, .right: value]
        
        XCTAssert(normalInit == sugarEdgesInit)
    }
    
    func testAllInit() {
        let value: CGFloat = 10
        
        let normalInit: UIEdgeInsets = UIEdgeInsets(top: value, left: value, bottom: value, right: value)
        let sugarEdgesInit: UIEdgeInsets = [.all: value]
        
        XCTAssert(normalInit == sugarEdgesInit)
    }
    
    func testPairsInit() {
        let hValue: CGFloat = 10
        let vValue: CGFloat = 20
        
        let normalInit: UIEdgeInsets = UIEdgeInsets(top: vValue, left: hValue, bottom: vValue, right: hValue)
        let sugarEdgesInit: UIEdgeInsets = [.top + .bottom: vValue, .left + .right: hValue]
        
        XCTAssert(normalInit == sugarEdgesInit)
    }
    
    func testOverridingInit() {
        let value1: CGFloat = 10
        let value2: CGFloat = 20
        
        let normalInit: UIEdgeInsets = UIEdgeInsets(top: value1, left: value1, bottom: value1, right: value2)
        let sugarEdgesInit: UIEdgeInsets = [.all: value1, .right: value2]
        
        XCTAssert(normalInit == sugarEdgesInit)
    }
    
}
