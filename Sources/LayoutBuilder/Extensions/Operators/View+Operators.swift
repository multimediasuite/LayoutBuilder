//
//  File.swift
//  
//
//  Created by Ihor Malovanyi on 20.02.2022.
//

#if canImport(UIKit)
    import UIKit
#elseif canImport(AppKit)
    import AppKit
#endif

public extension View {
    
    enum Parameter {
        
        case inset
        
    }
    
    static func +(lhs: View, rhs: CGFloat) -> LBLayoutRelationItem {
        .init(view: lhs, constant: rhs)
    }
    
    static func -(lhs: View, rhs: CGFloat) -> LBLayoutRelationItem {
        .init(view: lhs, constant: -rhs)
    }
    
    static func *(lhs: CGFloat, rhs: View) -> LBLayoutRelationItem {
        .init(view: rhs, multiplier: lhs)
    }
    
    func layout(_ attribute: NSLayoutConstraint.Attribute, parameters: [Parameter] = []) -> LBLayoutItem {
        .init(view: self, attribute: attribute)
    }
    
    func layout(_ attributes: [NSLayoutConstraint.Attribute], parameters: [Parameter] = []) -> LBLayoutItemSet {
        .init(view: self, attributes: attributes, parameters: parameters)
    }
    
}

public extension View {
    
    static func ==(lhs: LBLayoutItem, rhs: View) -> NSLayoutConstraint {
        NSLayoutConstraint(item: lhs.view, attribute: lhs.attribute, relatedBy: .equal, toItem: rhs, attribute: lhs.attribute, multiplier: 1, constant: 0)
    }
    
    static func >=(lhs: LBLayoutItem, rhs: View) -> NSLayoutConstraint {
        .init(item: lhs.view, attribute: lhs.attribute, relatedBy: .greaterThanOrEqual, toItem: rhs, attribute: lhs.attribute, multiplier: 1, constant: 0)
    }
    
    static func <=(lhs: LBLayoutItem, rhs: View) -> NSLayoutConstraint {
        .init(item: lhs.view, attribute: lhs.attribute, relatedBy: .lessThanOrEqual, toItem: rhs, attribute: lhs.attribute, multiplier: 1, constant: 0)
    }
    
}
