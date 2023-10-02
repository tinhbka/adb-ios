//
//  adb.swift
//  adb-ios
//
//  Created by Tinh Vu on 10/2/23.
//  Copyright © 2023 Li Zonghai. All rights reserved.
//

import Foundation

@objc public class Adb: NSObject {
    
    private let adb: AdbClient
    
    override public init() {
        adb = AdbClient(verbose: true)
        super.init()
    }
    
    @objc public func connect(host: String) {
        adb.connect(host) { success, result in
            print("Connect" + (result ?? ""))
        }
    }
    
    @objc public func runShell(command: String) {
        adb.shell(command) { success, result in
            
        }
    }
    
    @objc public func disconnect(host: String) {
        adb.disconnect(host) { success, result in
            
        }
    }
    
}
