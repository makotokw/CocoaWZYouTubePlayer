
Pod::Spec.new do |s|
  s.name         = "WZYouTubePlayer"
  s.version      = "0.0.1"
  s.summary      = "YouTube Player based on MoviePlayerController or AVPlayer"
  s.homepage     = "https://github.com/makotokw/CocoaWZYouTube"
  s.license      = 'MIT'  
  s.author       = { "Makoto Kawasaki" => "makoto.kw@gmail.com" }
  s.source       = { :git => "https://github.com/makotokw/CocoaWZYouTubePlayer.git" }
  s.requires_arc = true
  s.platform     = :ios, '5.0'
  
  s.subspec 'Core' do |core|
    core.source_files = 'Classes/ios/Core/*.{h,m}'
  end

  s.subspec 'MoviePlayer' do |mp|
    mp.dependency 'WZYouTubePlayer/Core'
    mp.source_files = 'Classes/ios/MoviePlayer/*.{h,m}'
    mp.frameworks   = 'MediaPlayer'
  end
  
end
