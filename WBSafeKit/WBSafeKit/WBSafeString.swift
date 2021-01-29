//
//  WBSafeString.swift
//  LearnSwift
//
//  Created by 智瑞斌 on 2020/11/30.
//  Copyright © 2020 wuba. All rights reserved.
//

import Foundation

public extension String{
    
    func index(_ i: WBSafeStringIndex, offsetBy n: WBSafeStringIndexDistance) -> String.Index
    {
        var indexDistance: String.IndexDistance = n.stirngIndexDistance
        //超出最大distance后返回Before String.endIndex
        let endDistance = self.distance(from: self.startIndex, to: self.index(before: self.endIndex))
        if(indexDistance > endDistance){
            indexDistance = endDistance
        }
        
        return self.index(i.stringIndex, offsetBy: indexDistance)
    }
    
    func index(_ i: WBSafeStringIndex, offsetBy n: WBSafeStringIndexDistance, limitedBy limit: WBSafeStringIndex) -> String.Index
    {
        //超出最大范围后返回Before String.endIndex
        return self.index(i.stringIndex, offsetBy: n.stirngIndexDistance, limitedBy: limit.stringIndex) ?? self.index(before: self.endIndex)
    }
    
}
