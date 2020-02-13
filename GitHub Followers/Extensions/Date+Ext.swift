//
//  Date+Ext.swift
//  GitHub Followers
//
//  Created by Elorza Moore, Mario on 13-02-20.
//  Copyright © 2020 Mario Elorza. All rights reserved.
//

import Foundation

extension Date {
    
    
    func convertToMonthYearFormat() -> String {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "MMM yyyy"
        return dateFormater.string(from: self)
    }
}
