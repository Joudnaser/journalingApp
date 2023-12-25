//
//  date.swift
//  audiorec
//
//  Created by joud alkahtany on 24/12/2023.
//
import Foundation

extension Date
{
    func toString(dateFormat format: String ) -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
        
    }

}
