//
//  SPProductAPI.swift
//  COpenSSL
//
//  Created by 黄树鹏 on 2019/7/23.
//

import Foundation
import PerfectHTTP
import PerfectLib
import PerfectCrypto

class SPProductAPI {
    
    //
    static func getProductInfo()->RequestHandler {
        return { (request ,reponse )in
            reponse.setBody(string: "get info ")
            reponse.completed()
        }
        
    }
    
}
