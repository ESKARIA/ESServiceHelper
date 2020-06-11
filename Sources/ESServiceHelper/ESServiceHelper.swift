//
//  ESServiceHelper.swift
//  ESServiceHelper
//
//  Created by Emil Karimov on 12/06/2020
//  Copyright © 2020 ESKARIA LLC. All rights reserved.
//

import Foundation

public extension Thread {
    
    func doInMainThread(_ codeBlock: @escaping () -> Void) {
        if self.isMainThread {
            codeBlock()
        } else {
            DispatchQueue.main.async {
                codeBlock()
            }
        }
    }
    
    func mainDelay(_ delay: TimeInterval,_ codeBlock: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: codeBlock)
    }
    
    func doInBackground(_ codeBlock: @escaping () -> Void) {
        DispatchQueue.global(qos: .background).async {
            codeBlock()
        }
    }
}
