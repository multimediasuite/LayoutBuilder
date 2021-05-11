//
//  Modification.swift
//  LayoutBuilder
//
//  Created by Ihor Malovanyi on 10.05.2021.
//

#if canImport(UIKit)
    import UIKit
#elseif canImport(AppKit)
    import AppKit
#endif

infix operator ! : AdditionPrecedence
public func !(lhs: LBLayoutRelationItemConvertable, rhs: LayoutPriority) -> LBLayoutRelationItem {
    var lhs = lhs.layoutRelationItem
    lhs.priority = rhs
    
    return lhs
}
public func !(lhs: LBCGFloat, rhs: LayoutPriority) -> LBLayoutRelationItem {
    var lhs = lhs.layoutRelationItem
    lhs.priority = rhs
    
    return lhs
}

public func +(lhs: LBLayoutRelationItemConvertable, rhs: LBCGFloat) -> LBLayoutRelationItem {
    var lhs = lhs.layoutRelationItem
    lhs.constant = rhs
    
    return lhs
}

public func -(lhs: LBLayoutRelationItemConvertable, rhs: LBCGFloat) -> LBLayoutRelationItem { lhs + (-rhs.cgFloatValue) }


public func *(lhs: LBCGFloat , rhs: LBLayoutRelationItemConvertable) -> LBLayoutRelationItem {
    var rhs = rhs.layoutRelationItem
    rhs.multiplier = lhs
    
    return rhs
}
