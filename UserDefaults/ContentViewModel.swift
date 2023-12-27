//
//  ContentViewModel.swift
//  UserDefaults
//
//  Created by DB-MBP-012 on 12/12/23.
//

import Foundation

class ContentViewModel {
    init() {
        let path = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true)
        print("Path: \(path)")
    }
}
