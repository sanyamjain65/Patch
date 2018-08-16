Pod::Spec.new do |s|
s.name         = "Patch"
s.version      = "1.0.1"
s.summary      = "A framework to check the size of patch framework"
s.description  = "A framework to check the size of patch framework along with pjsua, callkit, pushkit"
s.homepage     = "https://github.com/sanyamjain65/Patch"
s.license      = "MIT"
s.author       = { "sanyam" => "sanyam.j65@gmail.com" }
s.platform     = :ios
s.ios.deployment_target = "10.0"
s.source       = { :git => "https://github.com/sanyamjain65/Patch.git", :tag => "1.0.1" }
s.source_files = "Patch/**/*"
s.static_framework = true
s.dependency "Alamofire"
s.private_header_files = 'Patch/**/*.h'
s.frameworks   = "CallKit","PushKit"
s.subspec "pjsip-ios" do |ss|
ss.dependency "pjsip-ios", "~> 0.1.3"
ss.xcconfig = { "FRAMEWORK_SEARCH_PATHS" => "$(PODS_ROOT)/pjsip-ios/Pod/pjsip-lib/*.a"}
ss.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => "${PODS_ROOT}/pjsip-ios/Pod/pjsip-include/**/*.h" }
ss.pod_target_xcconfig = {
'ARCHS[sdk=iphonesimulator*]' => '$(ARCHS_STANDARD_64_BIT)'
}
end
end

