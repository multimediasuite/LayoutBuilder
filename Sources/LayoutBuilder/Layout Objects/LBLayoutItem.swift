//
//  LayoutItem.swift
//  LayoutBuilder
//
//  Created by Ihor Malovanyi on 10.05.2021.
//

#if canImport(UIKit)
    import UIKit
#elseif canImport(AppKit)
    import AppKit
#endif

public struct LBLayoutItem {
    
    var view: View
    var attribute: NSLayoutConstraint.Attribute
    var parameters: [View.Parameter] = []
    
}
