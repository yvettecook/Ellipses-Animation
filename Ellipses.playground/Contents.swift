//: Playground - noun: a place where people can play

import UIKit
import XCPlayground
import QuartzCore


let speed = 1.0

let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
XCPlaygroundPage.currentPage.liveView = containerView

// Static

let circle1 = UIView(frame: CGRect(x: 50, y: 130, width: 40, height: 40))
circle1.layer.cornerRadius = 20.0
circle1.backgroundColor = UIColor.whiteColor()
containerView.addSubview(circle1)

let circle2 = UIView(frame: CGRect(x: 130, y: 130, width: 40, height: 40))
circle2.layer.cornerRadius = 20.0
circle2.backgroundColor = UIColor.whiteColor()
containerView.addSubview(circle2)


let circle3 = UIView(frame: CGRect(x: 210, y: 130, width: 40, height: 40))
circle3.layer.cornerRadius = 20.0
circle3.backgroundColor = UIColor.whiteColor()
containerView.addSubview(circle3)


// Animate

let orbit = CAKeyframeAnimation(keyPath: "position")
let path = UIBezierPath()

let start = CGPoint(x: 0, y: 0)
let end = CGPoint(x: -160, y: 0)

path.moveToPoint(start)

let c1 = CGPoint(x: start.x, y: start.y - 100)
let c2 = CGPoint(x: end.x, y: end.y - 100)
path.addCurveToPoint(end, controlPoint1: c1, controlPoint2: c2)

orbit.path = path.CGPath
orbit.duration = speed
orbit.additive = true
orbit.repeatCount = 10
orbit.calculationMode = kCAAnimationPaced

circle3.layer.addAnimation(orbit, forKey: "orbit")

let circle1Anim = CABasicAnimation()
circle1Anim.keyPath = "position.x"
circle1Anim.fromValue = 70
circle1Anim.toValue = 150
circle1Anim.duration = speed
circle1Anim.repeatCount = 10

circle1.layer.addAnimation(circle1Anim, forKey: "basic")
circle1.layer.position = CGPointMake(70, 150)


let circle2Anim = CABasicAnimation()
circle2Anim.keyPath = "position.x"
circle2Anim.fromValue = 150
circle2Anim.toValue = 230
circle2Anim.duration = speed
circle2Anim.repeatCount = 10

circle2.layer.addAnimation(circle2Anim, forKey: "basic")
circle2.layer.position = CGPointMake(150, 150)

