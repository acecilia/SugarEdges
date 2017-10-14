Pod::Spec.new do |s|
  s.name             = 'SugarEdges'
  s.version          = '0.1.0'
  s.summary          = 'Syntactic sugar for init UIEdgeInsets and other similar objects'

  s.description      = <<-DESC
This framework provides the protocol ExpressibleByEdgesDictionaryLiteral in order to be used with other custom types.
                       DESC

  s.homepage         = 'https://github.com/acecilia/SugarEdges'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Andres Cecilia Luque' => 'a.cecilia.luque@gmail.com' }
  s.source           = { :git => 'https://github.com/acecilia/SugarEdges.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.source_files = 'SugarEdges/Classes/**/*'
  s.frameworks = 'UIKit'
end
