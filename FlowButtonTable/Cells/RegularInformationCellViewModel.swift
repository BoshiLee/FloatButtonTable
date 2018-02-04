//
//  RegularInformationCellViewModel.swift
//  FlowButtonTable
//
//  Created by Boshi Li on 04/02/2018.
//  Copyright © 2018 Boshi Li. All rights reserved.
//

import UIKit

class RegularInformationCellViewModel {
    
    var backgroudColor: UIColor
    var title: String
    var iconImage: UIImage
    
    init(backgroudColor: UIColor, title: String, iconImage: UIImage) {
        self.backgroudColor = backgroudColor
        self.title = title
        self.iconImage = iconImage
    }
    
    func cellInstance(tableView: UITableView, indexPath: IndexPath) -> RegularInformationCell {
        let cell = tableView.dequeue(RegularInformationCell.self, indexPath: indexPath)
        cell.configure(withViewModel: self)
        return cell
    }
    
}
