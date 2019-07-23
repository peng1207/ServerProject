//
//  SPRoutesConfiguration.swift
//  COpenSSL
//
//  Created by 黄树鹏 on 2019/7/23.
//
// 路由的配置

import Foundation
import PerfectHTTP

func handler(request: HTTPRequest, response: HTTPResponse) {
    // Respond with a simple message.
    response.setHeader(.contentType, value: "text/html")
    response.appendBody(string: "<html><title>Hello, world!</title><body>Hello, world!</body></html>")
    // Ensure that response.completed() is called when your processing is done.
    response.completed()
}

/// 获取所有的路由
///
/// - Returns: 路由数组
func sp_routes()->[Route]{
    var list = [Route]()
    list.append(Route(method: .get, uri: "/app/getProductInfo", handler: SPProductAPI.getProductInfo()))
    list.append(Route(method: .get, uri: "/", handler: handler))
    list.append(Route(method: .get, uri: "/**", handler:  StaticFileHandler(documentRoot: "./webroot", allowResponseFilters: true).handleRequest))
    
    return list
}




