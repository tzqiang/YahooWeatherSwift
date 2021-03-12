//
//  UIView+Extension.swift
//  RxSwiftDemo
//
//  Created by taozongqiang on 2021/3/5.
//

import UIKit

extension UIView {
    // MARK: - Position

    var top: CGFloat {
        get {
            return self.bounds.origin.y
        }
        set(top) {
            var frame = self.frame
            frame.origin.y = top
            self.frame = frame
        }
    }

    var left: CGFloat {
        get {
            return self.bounds.origin.x
        }
        set(left) {
            var frame = self.frame
            frame.origin.x = left
            self.frame = frame
        }
    }

    var bottom: CGFloat {
        get {
            return (self.frame.origin.y + self.frame.size.height)
        }
        set(bottom) {
            var frame = self.frame
            frame.origin.y = (bottom - self.frame.size.height)
            self.frame = frame
        }
    }

    var right: CGFloat {
        get {
            return (self.frame.origin.x + self.frame.size.width)
        }
        set(right) {
            var frame = self.frame
            frame.origin.x = (right - self.frame.size.width)
            self.frame = frame
        }
    }

    var width: CGFloat {
        get {
            return self.frame.size.width
        }
        set(width) {
            var frame = self.frame
            frame.size.width = width
            self.frame = frame
        }
    }

    var height: CGFloat {
        get {
            return self.frame.size.height
        }
        set(height) {
            var frame = self.frame
            frame.size.height = height
            self.frame = frame
        }
    }

    var origin: CGPoint {
        get {
            return self.frame.origin
        }
        set(origin) {
            var frame = self.frame
            frame.origin = origin
            self.frame = frame
        }
    }

    var size: CGSize {
        get {
            return self.frame.size
        }
        set(size) {
            var frame = self.frame
            frame.size = size
            self.frame = frame
        }
    }

    var centerX: CGFloat {
        get {
            return self.center.x
        }
        set(centerX) {
            var center = self.center
            center.x = centerX
            self.center = center
        }
    }

    var centerY: CGFloat {
        get {
            return self.center.y
        }
        set(centerY) {
            var center = self.center
            center.y = centerY
            self.center = center
        }
    }

    var minX: CGFloat {
        get {
            return self.left
        }
        set(minX) {
            self.left = minX
        }
    }

    var maxX: CGFloat {
        get {
            return self.left + self.width
        }
        set(maxX) {
            self.left = maxX - self.width
        }
    }

    var minY: CGFloat {
        get {
            return self.top
        }
        set(minY) {
            self.top = minY
        }
    }

    var maxY: CGFloat {
        get {
            return self.top + self.height
        }
        set(maxY) {
            self.top = maxY - self.height
        }
    }
}
