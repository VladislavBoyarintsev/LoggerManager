//
//  LoggerManager.swift
//  LoggerManager
//
//  Created by Владислав Костромин on 21.12.2022.
//

import Foundation

final class LoggerManager {
    private let timestampFormatter: DateFormatter = {
        var formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSSSSSZZ"
        return formatter
    }()
    
    func debugMessage(_ message: String) {
        #if DEBUG
        let timestampString = timestampFormatter.string(from: Date())
        print("\(timestampString) [Debug] \(message)")
        #endif
    }
}

let logger: LoggerManager = LoggerManager()
