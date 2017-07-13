//
//  CloseButton.swift
//  TagListViewDemo
//
//  Created by Benjamin Wu on 2/11/16.
//  Copyright © 2016 Ela. All rights reserved.
//

import UIKit

internal class CloseButton: UIButton {

    var iconSize: CGFloat = 10
    var lineWidth: CGFloat = 1
    var lineColor: UIColor = UIColor.white.withAlphaComponent(0.54)

    weak var tagView: TagView?

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()

        path.lineWidth = lineWidth
        path.lineCapStyle = .round

        let iconFrame = CGRect(
            x: (rect.width - iconSize) / 2.0 + 2,
            y: (rect.height - iconSize) / 2.0 + 2,
            width: iconSize - 4,
            height: iconSize - 4
        )
        
        let circlePath = UIBezierPath.init(ovalIn: CGRect(x: (rect.width - iconSize) / 2.0, y: (rect.height - iconSize), width: iconSize, height: iconSize))
        lineColor.setFill()
        circlePath.stroke()

        path.move(to: iconFrame.origin)
        path.addLine(to: CGPoint(x: iconFrame.maxX, y: iconFrame.maxY))
        path.move(to: CGPoint(x: iconFrame.maxX, y: iconFrame.minY))
        path.addLine(to: CGPoint(x: iconFrame.minX, y: iconFrame.maxY))

        UIColor.white.setStroke()

        path.stroke()
    }

}
