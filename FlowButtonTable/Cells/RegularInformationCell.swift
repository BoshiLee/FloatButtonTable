//
//  RegularInformationCell.swift
//  FlowButtonTable
//
//  Created by Boshi Li on 04/02/2018.
//  Copyright © 2018 Boshi Li. All rights reserved.
//

import UIKit

class RegularInformationCell: UITableViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titltLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(withViewModel vm: RegularInformationCellViewModel) {
        self.setCell(color: vm.backgroudColor)
        self.titltLabel.text = vm.title
        self.iconImageView.image = vm.iconImage
    }
    
    func setCell(color: UIColor) {
        switch color {
        case .white:
            self.titltLabel.textColor = .black
        default:
            self.titltLabel.textColor = .white
        }
        self.containerView.backgroundColor = color
    }
    
}
