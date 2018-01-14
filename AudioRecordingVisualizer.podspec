#
# Be sure to run `pod lib lint AudioRecordingVisualizer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AudioRecordingVisualizer'
  s.version          = '0.1.0'
  s.summary          = 'A short description of AudioRecordingVisualizer.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/05394b3722153a5cad3c776b90c433e6c1f36095/AudioRecordingVisualizer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '05394b3722153a5cad3c776b90c433e6c1f36095' => 'sam@meech-ward.com' }
  s.source           = { :git => 'https://github.com/05394b3722153a5cad3c776b90c433e6c1f36095/AudioRecordingVisualizer.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'AudioRecordingVisualizer/Classes/**/*'

  # , 'AudioKit.framework/Headers/*.h' , 'AudioKit.framework/Headers/*.hpp', 'AudioKitUI.framework/Headers/*.h'
  # s.public_header_files = 'AudioKit.framework/Headers/*.h', 'AudioKitUI.framework/Headers/*.h'

  # s.resource_bundles = {
  #   'AudioRecordingVisualizer' => ['AudioRecordingVisualizer/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'AudioKitUI'
  s.dependency 'AudioKit+Develop', '~> 4.0.5'
end
