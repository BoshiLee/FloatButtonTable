//
//  ViewController.swift
//  FlowButtonTable
//
//  Created by Boshi Li on 04/02/2018.
//  Copyright © 2018 Boshi Li. All rights reserved.
//

import UIKit

class FloatActionButtonViewController: UIViewController {
    
    var floatButton: FloatButton?
    @IBOutlet weak var fabTable: FloatActionButtonTable! {
        didSet {
            self.fabTable.configure()
            self.fabTable.fabTableDelegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        floatButton = FloatButton(orign: CGPoint(x: 16, y: ScreenHeight - 47 - 16), title: "追蹤樂團")
        self.view.addSubview(self.floatButton!)
        
    }



}

extension FloatActionButtonViewController: FabTableDelegate {
    func didButtonTap() {
        print("tap")
    }
    
    func should(HiddenFab isHidden: Bool) {
        self.floatButton?.isHidden = isHidden
    }
}

