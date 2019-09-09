//
//  ManipulaJson.swift
//  ManipulaJson
//
//  Created by Michel Anderson Lutz Teixeira on 09/09/19.
//

import Foundation

final class ManipulaJson {
    private let path: String
    private let fileName: String
    private let newVersion: String
    private let newUrlVersion: String
    private let jsonCrontroller: JsonController

    init(path: String, fileName: String, newVersion: String, newUrlVersion: String) {
        self.path = path
        self.fileName = fileName
        self.newVersion = newVersion
        self.newUrlVersion = newUrlVersion
        self.jsonCrontroller = JsonController(path: path, fileName: fileName)
    }

    func process() {
        if jsonCrontroller.loadJsonData() {
            guard let newVersion = jsonCrontroller.addVersion(version: newVersion, urlBinary: newUrlVersion) else { return }
            if jsonCrontroller.writeFile(with: newVersion) {
                print("Nova versão gerada")
            } else {
                print("Nãp foi possível gerar a nova versão.")
            }
        }
    }
}
