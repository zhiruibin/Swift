//
//  SafeArray.swift
//  LearnSwift
//
//  Created by 智瑞斌 on 2020/11/26.
//  Copyright © 2020 wuba. All rights reserved.
//

import Foundation

public extension Array{
    subscript(safeInt: WBSafeInt?) -> Element? {
        get {
            if let index = safeInt?.index {
                return (self.startIndex..<self.endIndex).contains(index) ? self[index] : nil
            }
            return nil
        }
        set {
            if let index = safeInt?.index, let newValue = newValue {
                if (self.startIndex ..< self.endIndex).contains(index) {
                    self[index] = newValue
                }
            }
        }
    }

    subscript(safeRange: WBSafeRange?) -> ArraySlice<Element>? {
        get {
            if let range = safeRange?.range {
                return self[range.clamped(to: self.startIndex ..< self.endIndex)]
            }
            return nil
        }
        set {
            if let range = safeRange?.range, let newValue = newValue {
                self[range.clamped(to: self.startIndex ..< self.endIndex)] = newValue
            }
        }
    }
}
