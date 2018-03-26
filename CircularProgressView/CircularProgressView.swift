//
//  CircularProgressView.swift
//  CircularProgressView
//
//  Created by Teja on 3/23/18.
//  Copyright © 2018 Teja. All rights reserved.
//

import UIKit

class CircularProgressView: UIView{
    
    var valuesArray:[CGFloat]?
    var colorArray:[UIColor]?
    var defalutColors:[UIColor] = [UIColor.blue,UIColor.red,UIColor.green,UIColor.brown]
    var arcLineWitdh:CGFloat = 10
    
    private let startAngle =  3*CGFloat.pi/4
    private var endAngle = CGFloat.pi/4
    private var strokeColor = UIColor.blue
    
    override func draw(_ rect: CGRect) {
        
        if let values = valuesArray{
            let maxValue = valuesArray?.max()
            var newValueArray = [CGFloat]()
            
            for val in values{
                newValueArray.append(val/maxValue!)
            }
            
            
            var colorControl = 0
            var radius = min(self.bounds.width/2, self.bounds.height/2) - arcLineWitdh/2
            
            for modifiedValue in newValueArray
            {
                let path = UIBezierPath(arcCenter: CGPoint(x: self.bounds.midX, y: self.bounds.midY), radius: radius, startAngle: startAngle, endAngle: startAngle + (3*CGFloat.pi/2)*modifiedValue, clockwise: true)
                
                
                if colorArray != nil && colorArray!.count < colorControl {
                    strokeColor = colorArray![colorControl]
                }else{
                    let someVal = arc4random_uniform(4)
                    strokeColor = defalutColors[Int(someVal)]
                }
                path.lineWidth = arcLineWitdh
                strokeColor.setStroke()
                path.stroke()
                
                colorControl = colorControl + 1
                radius = radius - arcLineWitdh
            }
        }
    }
}
