//
//  WBSafeKit.swift
//  LearnSwift
//
//  Created by 智瑞斌 on 2020/11/30.
//  Copyright © 2020 wuba. All rights reserved.
//

import Foundation

//声明前置操作符 ~
prefix operator ~

public prefix func ~ (value: Int?) -> WBSafeInt?
{
    return WBSafeInt(value:value)
}

public prefix func ~ (value: CountableClosedRange<Int>?) -> WBSafeRange?
{
    return WBSafeRange(value:value)
}

public prefix func ~ (value: String.Index) -> WBSafeStringIndex
{
    return WBSafeStringIndex(value: value)
}

public prefix func ~ (value: String.IndexDistance) -> WBSafeStringIndexDistance
{
    return WBSafeStringIndexDistance(value: value)
}

public struct WBSafeInt
{
    var index:Int?;
    init?(value: Int?){
        guard let value = value else {
            return nil
        }
        self.index = value
    }
}

public struct WBSafeRange
{
    var range: Range<Int>
    init?(value: CountableClosedRange<Int>?) {
        guard let value = value else {
            return nil
        }
        self.range = Range<Int>(value)
    }
}

public struct WBSafeStringIndexDistance
{
    var stirngIndexDistance:String.IndexDistance;
    init(value: String.IndexDistance){
        self.stirngIndexDistance = value
    }
}

public struct WBSafeStringIndex
{
    var stringIndex:String.Index;
    init(value: String.Index){
        self.stringIndex = value
    }
}
