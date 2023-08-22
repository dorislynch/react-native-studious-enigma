require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNStudiousEnigma"
  s.version      = package['version'].gsub(/v|-beta/, '')
  s.summary      = package['description']
  s.description  = package['description']
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.author       = package['author']
  
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/dorislynch/react-native-studious-enigma.git", :tag => "master" }

  s.source_files = "ios/*.{h,m,mm}"
  s.requires_arc = true
  s.preserve_paths = 'README.md', 'package.json', 'index.js'
  # s.library = 'c++'

  s.dependency 'React'
  s.dependency 'React-Core'
  s.dependency "React-cxxreact"
  s.dependency "React-perflogger"
  s.dependency "React-jsi"
  s.dependency "React-jsiexecutor"
  s.dependency "React-utils"
  s.dependency "React-runtimeexecutor"

  s.dependency 'JJException'

end

  
