//
//  SigleButtonCell.swift
//  FlowButtonTable
//
//  Created by Boshi Li on 04/02/2018.
//  Copyright © 2018 Boshi Li. All rights reserved.
//

import UIKit

class FabCell: UITableViewCell, FabButtonDelegate {
    func should(HiddenFab isHidden: Bool) {
        self.button?.isHidden = isHidden
    }
    
    
    var button: FloatButton?
    weak var delegate: FabCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        self.button = FloatButton(orign: CGPoint(x: 16, y: 16), title: "")
        self.contentView.addSubview(button!)
        self.selectionStyle = .none
    }
    
    func configure(title: String) {
        self.button?.setTitle(title, for: .normal)
        self.button?.addTarget(self, action: #selector(self.buttonAction), for: .touchUpInside)
    }
    
    @objc func buttonAction() {
        self.delegate?.didButtonTap()
    }
    
    
    
}
