//
//  Skeleton.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import UIKit

class SkeletonAnimation {
    
    var isStartAnimation: Bool = false
    
    func show(on views: [UIView]) {}
    
    func hide(on views: [UIView]) {}
    
    private func recieveEndAnimationState() {
        // recieve info about stop animation
    }
    
    func checkAnimationStatus() {
        if isStartAnimation {
            //
        } else {
            //
        }
    }
}

class SomeView: SkeletonAnimation {
    
    override func show(on views: [UIView]) {
        // show animation for title or button logic
    }
    
    override func hide(on views: [UIView]) {
        // hide animation for all elements
    }
}
