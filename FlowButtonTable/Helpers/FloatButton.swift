//
//  FloatButton.swift
//  FlowButtonTable
//
//  Created by Boshi Li on 04/02/2018.
//  Copyright © 2018 Boshi Li. All rights reserved.
//

import UIKit

class FloatButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(orign: CGPoint, title: String) {
        let buttonSize = CGSize(width: ScreenWidth - 32, height: 47)
        let frame = CGRect(x: orign.x, y: orign.y, width: buttonSize.width, height: buttonSize.height)
        self.init(frame: frame)
        self.backgroundColor = UIColor(red: 230, green: 46, blue: 46)
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 2
        self.clipsToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
