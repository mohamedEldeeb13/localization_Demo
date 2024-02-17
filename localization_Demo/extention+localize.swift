//
//  extention+localize.swift
//  localization_Demo
//
//  Created by Mohamed Abd Elhakam on 15/02/2024.
//

import Foundation

extension String {
    var localized : String {
        return NSLocalizedString(self, comment: "")
    }
}
