Pod::Spec.new do |s|
  s.name = "Log"
  s.version = "0.0.1"
  s.summary = "Protocol-oriented module for printing logs to the console, automatically tracking source location and log type"
  s.description = "Print information to the console with the included lightweight and easy-to-use API or create one yourself which adopts the Loggable protocol"
  s.homepage = "https://github.com/mtfourre/Loggable"
  s.license = { :type => "Unlicense", :file => "LICENSE" }
  s.author = { "Michael Fourre" => "mtfourre@gmail.com" }
  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.source = { :git => 'https://github.com/mtfourre/Log.git' }
  s.source_files = "*.swift"
end
