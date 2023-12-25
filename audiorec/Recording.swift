//
//  Recording.swift
//  audiorec
//
//  Created by joud alkahtany on 24/12/2023.
//

import Foundation

struct Recording : Equatable {
    
    let fileURL : URL
    let createdAt : Date
    var isPlaying : Bool
    
}
