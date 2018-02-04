//
//  FlowButtonTable.swift
//  FlowButtonTable
//
//  Created by Boshi Li on 04/02/2018.
//  Copyright © 2018 Boshi Li. All rights reserved.
//

import UIKit

class FloatActionButtonTable: UITableView {
    
    weak var fabTableDelegate: FabTableDelegate?
    weak var fabButtonDelegate: FabButtonDelegate?
    // these properties are not const value, which are estimate by algorithm.
    var cellCounts = 30
    var cellHeight = 80
    var fabIndex = 16
    var fabPosition: CGFloat {
        let height = cellHeight / 2 + 4
        return CGFloat(height * (fabIndex - 1) + 16 + 20)
    }
    
    func configure() {
        self.register(FabCell.self)
        self.register(RegularInformationCell.self)
        self.dataSource = self
        self.delegate = self
    }
    
}

extension FloatActionButtonTable: UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cellCounts
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch indexPath.row {
        case 16:
            let cell = tableView.dequeue(FabCell.self, indexPath: indexPath)
            cell.configure(title: "追蹤樂團")
            self.fabButtonDelegate = cell
            cell.delegate = self
            return cell
        default:
            let vm = RegularInformationCellViewModel(backgroudColor: .white, title: "拍謝少年", iconImage: #imageLiteral(resourceName: "clock"))
            let regularCell = tableView.dequeue(RegularInformationCell.self, indexPath: indexPath)
            regularCell.configure(withViewModel: vm)
            return regularCell
        }
    }
    
}

extension FloatActionButtonTable: UITableViewDelegate, FabCellDelegate {
    
    func didButtonTap() {
        self.fabTableDelegate?.didButtonTap()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(self.cellHeight)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y >= self.fabPosition {
            self.fabTableDelegate?.should(HiddenFab: true)
            self.fabButtonDelegate?.should(HiddenFab: false)
        } else {
            self.fabTableDelegate?.should(HiddenFab: false)
            self.fabButtonDelegate?.should(HiddenFab: true)
        }
    }
}
