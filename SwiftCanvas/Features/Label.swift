//
//  Label.swift
//  SwiftCanvas
//
//  Created by Sun on 2020/7/3.
//  Copyright © 2020 Sun. All rights reserved.
//

import UIKit


class InsetsLabel: UILabel {
    
    var contentInsets: UIEdgeInsets = .zero
    
    override func drawText(in rect: CGRect) {
        let insetsRect = rect.inset(by: contentInsets)
        super.drawText(in: insetsRect)
    }
    
    override var intrinsicContentSize: CGSize {
        return addInsets(to: super.intrinsicContentSize)
    }
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        return addInsets(to: super.sizeThatFits(size))
    }
    
    private func addInsets(to size: CGSize) -> CGSize {
        let width = size.width + contentInsets.left + contentInsets.right
        let height = size.height + contentInsets.top + contentInsets.bottom
        return CGSize(width: width, height: height)
    }
}
