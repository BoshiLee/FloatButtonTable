//
//  UIColorHelper.swift
//  FlowTagCollectionView
//
//  Created by Boshi Li on 24/01/2018.
//  Copyright © 2018 Boshi Li. All rights reserved.
//

import UIKit

extension UIColor {
    
    /**
     Initialize a new UIColor from a hex value
     
     - parameter hex: The hex integer (0x______) representation of the color
     */
    convenience init(hex: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
    
    /**
     Initialize a UIColor based on provided RGB value in integer
     - parameter red:   Red Value in integer (0-255)
     - parameter green: Green Value in integer (0-255)
     - parameter blue:  Blue Value in integer (0-255)
     - returns: UIColor with specified RGB values
     */
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
}
