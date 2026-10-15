Pod::Spec.new do |spec|
  spec.name = 'SamplabUrlTools'
  spec.version = '0.1.1'
  spec.summary = 'Offline URL helpers for SampLab Pro'
  spec.description = 'Offline URL builder for SampLab Pro, a browser audio and MIDI tool suite. Not an official SDK.'
  spec.homepage = 'https://samplab.pro/'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { 'bbwdadfg' => 'https://samplab.pro/' }
  spec.source = { :git => 'https://github.com/wangneo276-lgtm/samplab-url-tools.git', :tag => 'v0.1.1' }
  spec.source_files = 'swift/Sources/**/*.swift'
  spec.ios.deployment_target = '13.0'
  spec.osx.deployment_target = '10.15'
  spec.swift_version = '5.7'
end
