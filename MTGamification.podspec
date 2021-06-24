Pod::Spec.new do |spec|
  spec.name         = 'MTGamification'
  spec.version      = '0.1.2'
  spec.summary      = 'MTGamification framework'
  spec.description  = <<-DESC
	import STCGamification framework and implement methods
			DESC
  spec.homepage     = 'https://github.com/skyshivy/MTGamification'
  spec.authors      = { 'skyshivy' => 'sky.shivy@gmail.com' }
  spec.license      = { :type => "MIT", :file => "license" }

  spec.platform      = :ios
  spec.source       = { :git => 'https://github.com/skyshivy/MTGamification.git', :tag => spec.version }

  spec.vendored_frameworks = 'MTGamification.xcframework'
  spec.exclude_files = "Classes/Exclude"
  spec.requires_arc = true
  
end
