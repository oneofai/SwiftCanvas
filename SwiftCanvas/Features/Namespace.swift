//
//  Namespace.swift
//  SwiftCanvas
//
//  Created by Sun on 2020/7/3.
//  Copyright © 2020 Sun. All rights reserved.
//

import Foundation


// MARK: - Swift 面向协议的前缀实现

// 1. 定义一个 struct/class，用这个 struct/class 将实际的对象包括起来，作为一个范型 struct/class，不做任何实际操作
struct NamespaceWrapper<Base> {
    var base: Base
    init(_ base: Base) {
        self.base = base
    }
}

// 2. 定义一个 protocol，不实现任何变量/方法声明，防止其他的 protocol 继承修改变量/方法的实现
protocol NamespaceCompatible {}


// 3. 实现 protocol 的 extension，提供默认实现（实现实际的 NamespaceWrapper 示例属性，做为命名空间的扩展）
extension NamespaceCompatible {

    static var ns: NamespaceWrapper<Self>.Type {
        get {
            return NamespaceWrapper<Self>.self
        }
        set {
            // this enables using NamespaceWrapper to "mutate" base type
        }
    }

    var ns: NamespaceWrapper<Self> {
        get {
            return NamespaceWrapper(self)
        }
        set {
            // this enables using NamespaceWrapper to "mutate" base type
        }
    }

}

// 4. 扩展需要的系统 api
extension String: NamespaceCompatible {}
extension NSString: NamespaceCompatible {} // Cocoa
extension UInt: NamespaceCompatible {}

// 5. 对字符串字面表达能力协议扩展 NamespaceWrapper，提供自定义方法
extension NamespaceWrapper where Base: ExpressibleByStringLiteral {

    var digitsCount: UInt {
        var count: UInt = 0
        for c in (base as! String) where ("0"..."9").contains(c) {
            count += 1
        }
        return count
    }
}

extension NamespaceWrapper where Base: BinaryInteger {

    func print() {
        Swift.print(self.base)
    }
}
