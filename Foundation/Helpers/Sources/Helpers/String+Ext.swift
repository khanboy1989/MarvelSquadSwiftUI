//
//  File.swift
//  
//
//  Created by Serhan Khan on 14.05.24.
//

import CryptoKit
import Foundation

public extension String {
    func MD5() -> String {
        let digest = Insecure.MD5.hash(data: Data(self.utf8))
        return digest.map {
            String(format: "%02hhx", $0)
        }
        .joined()
    }
}
