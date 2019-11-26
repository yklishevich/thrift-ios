Pod::Spec.new do |spec|
  spec.name             	= 'thrift'
  spec.version          	= '1.0.0'
  spec.license      		= { :type => "MIT", :file => "LICENSE.txt" }
  spec.homepage         	= 'https://github.com/yklishevich/thrift-ios'
  spec.authors          	= { 'Eugene Klishevich' => 'eklishevich@gmail.com' }
  spec.summary          	= 'thrift static library for iOS'
  spec.platform     		= :ios, "8.0"
  spec.source           	= { :git => 'https://github.com/yklishevich/thrift-ios.git' }
  # ! do not include *.tcc files into 'source_files' otherwise error will occur: "The 'Pods-RubetekIOS-CPP' target has libraries with conflicting names: libthrift.a." 
  spec.source_files        	= 'include/**/*.h'
  spec.header_mappings_dir	= 'include'
  spec.vendored_libraries 	= 'lib/libthrift.a'
  spec.preserve_paths		= 'include/**/*.tcc'
  # HEADER_SEARCH_PATHS is modified so that tcc files could be found
  spec.user_target_xcconfig  = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/thrift/include' }
  
end