//
//  SPServerConfiguration.swift
//  COpenSSL
//
//  Created by 黄树鹏 on 2019/7/23.
//
// 基础数据的配置 域名 sql等配置

import Foundation

struct SPServerConfiguration {
    let baseURL = "http://localhost/"
    let name = "localhost"
    let mysqlDBName = "ZKDataBase"
    let mysqlHost = "huangshupeng.cn"
    let mysqlPort = "3306"
    let mysqlUser = "root"
    let mysqlPwd = "HSP13824404512hsp"
    let httpPort = 8181
}
