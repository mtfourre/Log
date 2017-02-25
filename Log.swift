//
//  Log.swift
//  Loggable
//
//  Created by Michael Fourre on 7/15/16.
//

public struct Log: Loggable {
    public enum LogType: String {
        case debug = "Debug"
        case error = "Error"
        case info = "Info"
        case normal = "Normal"
        case verbose = "Verbose"
        case warning = "Warning"
    }
    
    public static func debug(_ string: String?, file: String = #file, function: String = #function, line: Int = #line) {
        self.log(type: LogType.debug.rawValue, string: string, file: file, function: function, line: line)
    }
    
    public static func error(_ string: String?, file: String = #file, function: String = #function, line: Int = #line) {
        self.log(type: LogType.error.rawValue, string: string, file: file, function: function, line: line)
    }
    
    public static func info(_ string: String?, file: String = #file, function: String = #function, line: Int = #line) {
        self.log(type: LogType.info.rawValue, string: string, file: file, function: function, line: line)
    }
    
    public static func normal(_ string: String?, file: String = #file, function: String = #function, line: Int = #line) {
        self.log(type: LogType.normal.rawValue, string: string, file: file, function: function, line: line)
    }
    
    public static func verbose(_ string: String?, file: String = #file, function: String = #function, line: Int = #line) {
        self.log(type: LogType.verbose.rawValue, string: string, file: file, function: function, line: line)
    }
    
    public static func warning(_ string: String?, file: String = #file, function: String = #function, line: Int = #line) {
        self.log(type: LogType.warning.rawValue, string: string, file: file, function: function, line: line)
    }
}
