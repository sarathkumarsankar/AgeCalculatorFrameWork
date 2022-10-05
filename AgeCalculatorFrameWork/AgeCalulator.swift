//
//  AgeCalulator.swift
//  AgeCalculatorFrameWork
//
//  Created by SarathKumar S on 05/10/22.
//

import Foundation

public struct AgeCalculator {
    public static func getAgeFromDOF(date: String) -> (Int,Int,Int) {
        
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "YYYY-MM-dd"
        let dateOfBirth = dateFormater.date(from: date)
        
        let calender = Calendar.current
        
        let dateComponent = calender.dateComponents([.year, .month, .day], from:
                                                        dateOfBirth!, to: Date())
        
        return (dateComponent.year!, dateComponent.month!, dateComponent.day!)
    }
}
