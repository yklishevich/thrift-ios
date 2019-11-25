Pod::Spec.new do |spec|
  spec.name             	= 'thrift'
  spec.version          	= '1.0.0-dev'
  spec.license      		= { :type => "MIT", :file => "LICENSE.txt" }
  spec.homepage         	= 'https://github.com/yklishevich/thrift-ios'
  spec.authors          	= { 'Eugene Klishevich' => 'eklishevich@gmail.com' }
  spec.summary          	= 'thrift static library for iOS'
  spec.platform     		= :ios, "8.0"
  spec.source           	= { :git => 'https://github.com/yklishevich/thrift-ios.git' }
  # spec.source_files        	= 'include/**/*.h', 'include/**/*.tcc'
  spec.header_mappings_dir	= 'include'
  spec.vendored_libraries 	= 'lib/libthrift.a'
  spec.xcconfig 			= { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/thrift/include" }
  
end