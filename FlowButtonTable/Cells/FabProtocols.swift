//
//  FabProtocols.swift
//  FlowButtonTable
//
//  Created by Boshi Li on 04/02/2018.
//  Copyright © 2018 Boshi Li. All rights reserved.
//

import UIKit

protocol FabCellDelegate: class {
    func didButtonTap()
}

protocol FabButtonDelegate: class {
    func should(HiddenFab isHidden: Bool)
}

protocol FabTableDelegate: class {
    func didButtonTap()
    func should(HiddenFab isHidden: Bool)
}
