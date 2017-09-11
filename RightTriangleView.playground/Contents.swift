//: Playground - noun: a place where people can play

import UIKit

class RightTriangleView: UIView {
    
    let shapeLayer = CAShapeLayer()
    
    override func draw(_ rect: CGRect) {
        
        // Drawing code
        self.backgroundColor = UIColor.clear
        let width = layer.frame.width
        let heigth = layer.frame.height
        
        let Path = UIBezierPath()
        
        Path.move(to: CGPoint(x: 0, y: 0))
        
        Path.addLine(to: CGPoint(x: width + 10, y: 0))
        
        Path.addLine(to: CGPoint(x: width, y: 10))
        
        Path.addLine(to: CGPoint(x: width, y: heigth))
        
        Path.addLine(to: CGPoint(x: 0, y: heigth))
        
        Path.addLine(to: CGPoint(x: 0, y: 0))
        
        Path.close()
        
        shapeLayer.path = Path.cgPath
        shapeLayer.fillColor = UIColor.black.cgColor
        shapeLayer.borderWidth = 10
        shapeLayer.borderColor = UIColor.black.cgColor
        
        shapeLayer.shadowColor = UIColor.black.cgColor
        shapeLayer.shadowOffset = CGSize.zero
        shapeLayer.shadowRadius = 2
        shapeLayer.shadowOpacity = 1
        shapeLayer.masksToBounds = false
        
        layer.insertSublayer(shapeLayer, at: 0)
        
    }
}

let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
let view = RightTriangleView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))

view1.addSubview(view)