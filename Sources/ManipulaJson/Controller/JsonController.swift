//
//  JsonController.swift
//  ManipulaJson
//
//  Created by Michel Anderson Lutz Teixeira on 09/09/19.
//

import Foundation

class JsonController {
    private var fileData: Data?
    private let path: String
    private let fileName: String

    init(path: String, fileName: String) {
        self.path = path
        self.fileName = fileName
    }

    func loadJsonData() -> Bool {
        do {
            fileData = try Data(contentsOf: URL(fileURLWithPath: path).appendingPathComponent(fileName, isDirectory: false))
            return true
        } catch let error {
            print("Error nãp foi possível carregar os dados: \(error.localizedDescription)")
            return false
        }
    }

    func addVersion(version: String, urlBinary: String) -> [String: String]? {
        guard let fileData = fileData else { return nil }

        do {
            guard let jsonDic = try JSONSerialization.jsonObject(with: fileData, options: []) as? [String: String] else { return nil }
            var newJsonDic = jsonDic
            newJsonDic[version] = urlBinary
            return newJsonDic
        } catch let error {
            print("Error não foi possível adicionar a versão: \(version) - \(error.localizedDescription)")
            return nil
        }
    }

    func writeFile(with dicVersions: [String: String]) -> Bool {
        let fileManager = FileManager.default
        guard let jsonVersionFiles = try? fileManager.contentsOfDirectory(atPath: path) else { return false }
        let jsonEncoded = try? JSONEncoder().encode(dicVersions)

        for file in jsonVersionFiles where file == self.fileName {
            let url = URL(fileURLWithPath: path).appendingPathComponent(file, isDirectory: false)
            if let dataJson = jsonEncoded, let str = String(data: dataJson, encoding: .utf8)?.replacingOccurrences(of: "\\/", with: "/") {
                print("-------------------------------")
                print(str)
                dump(str)
                print("-------------------------------")
                do {
                    try str.write(to: url, atomically: false, encoding: .utf8)
                    return true
                } catch let error {
                    print(error.localizedDescription)
                    return false
                }
            }
        }

        return false
    }
}
