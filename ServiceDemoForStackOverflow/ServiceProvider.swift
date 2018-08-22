//
//  ServiceProvider.swift
//  TranslateRecoder
//
//  Created by Gregory Qian on 2018/8/21.
//  Copyright © 2018 Gregory Qian. All rights reserved.
//

import Cocoa

class ServiceProvider: NSObject {
    
    let errorMessage = NSString(string: "Could not find the text for parsing.")
    
    @objc func service(_ pasteboard: NSPasteboard, userData: String?, error: AutoreleasingUnsafeMutablePointer<NSString>) {
        guard let str = pasteboard.string(forType: NSPasteboard.PasteboardType.string) else {
            error.pointee = errorMessage
            return
        }
        
        let alert = NSAlert()
        alert.messageText = "Hello \(str)"
        alert.informativeText = "Welcome in the service"
        alert.addButton(withTitle: "OK")
        alert.runModal()
    }
    
//    func writeSelectionToPasteboard(_ pboard: NSPasteboard, types: [Any]) -> Bool {
//
//        return true
//    }
    
//    func readSelectionFromPasteboard(_ pboard: NSPasteboard) -> Bool {
//        
//        return true
//    }


}
