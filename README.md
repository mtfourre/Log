# Loggable
Protocol-oriented module for printing logs to the console, automatically tracking source location and log type

Bundled with the Loggable protocol is a Log module which allows the user to invoke static functions from anywhere in the application which requires some kind of console output.

The Log module encapsulates a LogType enum which exists for the organizational purpose of grouping the different types of log messages to be dispatched along with a human readable string representation of that type. The LogType enum allows for the following types of logs:

    Debug
    Error
    Info
    Normal
    Verbose
    Warning

The primary function of these different types is to display intent to the user when viewing log messages in the console, and additionally to provide a keyword for which to search log messages in the event that the user only wishes to see logs of one variety, or the log messages are otherwise difficult to sort out visually.

When log messages are printed to the console, they will take account of the file and line number from which the function was invoked. For example, a log message which is invoked on line 42 of a file "UserModel.swift" may be invoked as follows:

    Log.debug("This is a test log message")

outputting the following in the console:

    Log.Debug<UserModel:42>: This is a test log message

Of course any new module may be created which adopts the Loggable protocol, so these log messages are not limited to only the above listed types.

Please direct any questions or concerns to me here on Github so that I can address them as soon as possible.
