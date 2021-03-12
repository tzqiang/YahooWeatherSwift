//
//  String+Extension.swift
//  RxSwiftDemo
//
//  Created by taozongqiang on 2021/3/12.
//

import Foundation
import CommonCrypto

extension String {
    func md5() -> String {
        let context = UnsafeMutablePointer<CC_MD5_CTX>.allocate(capacity: 1)
        var digest = [UInt8](repeating:0, count:Int(CC_MD5_DIGEST_LENGTH))
        var hexString = ""

        CC_MD5_Init(context)
        CC_MD5_Update(context, self, CC_LONG(self.lengthOfBytes(using: String.Encoding.utf8)))
        CC_MD5_Final(&digest, context)
        context.deallocate()
        for byte in digest {
            hexString += String(format:"%02x", byte)
        }

        return hexString
    }
}
