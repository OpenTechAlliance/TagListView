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
        let circlePath = UIBezierPath()

        let circleFrame = CGRect(
            x: (rect.width - iconSize) / 2.0,
            y: (rect.height - iconSize) / 2.0,
            width: iconSize,
            height: iconSize
        )
        
        circlePath.addArc(withCenter: CGPoint(x: circleFrame.midX, y: circleFrame.midY), radius: iconSize, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: false)
        
        lineColor.setFill()
        circlePath.fill()
        
        let iconFrame = CGRect(
            x: circleFrame.origin.x + 1,
            y: circleFrame.origin.y + 1,
            width: iconSize - 2,
            height: iconSize - 2
        )
        
        path.lineWidth = lineWidth
        path.lineCapStyle = .round

        path.move(to: iconFrame.origin)
        path.addLine(to: CGPoint(x: iconFrame.maxX, y: iconFrame.maxY))
        path.move(to: CGPoint(x: iconFrame.maxX, y: iconFrame.minY))
        path.addLine(to: CGPoint(x: iconFrame.minX, y: iconFrame.maxY))

        UIColor.white.setStroke()
        path.stroke()
    }

}
