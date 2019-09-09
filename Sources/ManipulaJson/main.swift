import Foundation

enum ArgumentTypes: String {
    case path = "--path"
    case fileName = "--fileName"
    case newVersion = "--newVersion"
    case newUrlVersion = "--newUrlVersion"
}
print("OPA")
//dump(CommandLine.arguments[2])

//if CommandLine.arguments.contains("--path"),
//    CommandLine.arguments.contains("--fileName"),
//    CommandLine.arguments.contains("--newVersion"),
//    CommandLine.arguments.contains("--newUrlVersion") {
//
//    var path: String = ""
//    var fileName: String = ""
//    var newVersion: String = ""
//    var newUrlVersion: String = ""
//
//    for (index, argument) in CommandLine.arguments.enumerated() {
//        guard let type = ArgumentTypes.init(rawValue: argument) else { continue }
//        switch type {
//        case .path:
//            path = CommandLine.arguments[index]
//
//            print("path: \(path)")
//
//        case .fileName:
//            fileName = CommandLine.arguments[index]
//            print("fileName: \(fileName)")
//
//        case .newVersion:
//            newVersion = CommandLine.arguments[index]
//            print("newVersion: \(newVersion)")
//
//        case .newUrlVersion:
//            newUrlVersion = CommandLine.arguments[index]
//            print("newUrlVersion: \(newUrlVersion)")
//        }
//    }
//    let manipulaJson = ManipulaJson(path: path,
//                                    fileName: fileName,
//                                    newVersion: newVersion,
//                                    newUrlVersion: newUrlVersion)
//    manipulaJson.process()
//} else {
//    fatalError("Parametros necessários [--path, --fileName, --newVersion, --newUrlVersion]")
//}


//
//guard let fileName = CommandLine.arguments.contains("-fileName") else { fatalError("parametro --fileName necessário") }
//guard let newVersion = CommandLine.arguments.contains("-newVersion") else { fatalError("parametro --newVersion necessário") }
//guard let newUrlVersion = CommandLine.arguments.contains("-newUrlVersion") else { fatalError("parametro --newUrlVersion necessário") }


//"/Users/michel.lutz/DeviOS/ManipulaJson/Resources/"
//"ModuleBinary.json"
//"1.0.2"
//"https://micheltlutz.me"


//func run() {
//
//}

//swift run --path=/Users/michel.lutz/DeviOS/ManipulaJson/Resources/ --fileName=ModuleBinary.json --newVersion=1.0.2 --newUrlVersion=https://micheltlutz.me


//swift run ManipulaJson --path="/Users/michel.lutz/DeviOS/ManipulaJson/Resources/" --fileName="ModuleBinary.json" --newVersion"=1.0.2" --newUrlVersion="https://micheltlutz.me"


//swift run ManipulaJson --path "/Users/michel.lutz/DeviOS/ManipulaJson/Resources/" --fileName "ModuleBinary.json" --newVersion "1.0.2" --newUrlVersion "https://micheltlutz.me"
