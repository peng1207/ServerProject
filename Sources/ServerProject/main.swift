import Foundation
import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
import PerfectCrypto

import PerfectMySQL
import StORM


//routes.add(method: .get, uri: "/getProductInfo", handler: SPProductAPI.getProductInfo())
let serverConf = SPServerConfiguration()

//try HTTPServer.launch(name: serverConf.name,
//                      port: serverConf.httpPort,
//                      routes: routes,
//                      responseFilters: [
//                        (PerfectHTTPServer.HTTPFilter.contentCompression(data: [:]), HTTPFilterPriority.high)])
//


try HTTPServer.launch(wait: true, name: serverConf.name, port: serverConf.httpPort, routes: sp_routes(), responseFilters: [(PerfectHTTPServer.HTTPFilter.contentCompression(data: [:]), HTTPFilterPriority.high)])

 


