//
//  Loggable.swift
//  Loggable
//
//  Created by Michael Fourre on 2/4/17.
//

public protocol Loggable {
    
}

public extension Loggable {
    fileprivate static func position(file: String, function: String, line: Int) -> String {
        let path = file.components(separatedBy: "/")
        let file = path.last?.replacingOccurrences(of: ".swift", with: "") ?? ""
        return "<\(file):\(line)>"
    }
    
    fileprivate static func logFirst(_ type: String, file: String, function: String, line: Int, strArr: [String]?) {
        print("Log.\(type)\(position(file: file, function: function, line: line)): \(strArr?.first ?? "Could not parse string")")
    }
    
    fileprivate static func logRemaining(_ strArr: [String]?) {
        strArr?.dropFirst().forEach({ print($0) })
    }
    
    public static func log(type: String, string: String?, file: String, function: String, line: Int) {
        let strArr = string?.components(separatedBy: "\n")
        self.logFirst(type, file: file, function: function, line: line, strArr: strArr)
        self.logRemaining(strArr)
    }
}
