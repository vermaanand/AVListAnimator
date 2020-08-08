
Pod::Spec.new do |spec|
  spec.name         = "AVListAnimator"
  spec.version      = "1.0.0"
  spec.summary      = "A AVListAnimator framework is used for Smooth and Animatable UICollectionView and UITableView loading Cell."
  spec.description  = <<-DESC
                    AVListAnimator is a small and lightweight Swift framework that allows to perform a lots of animation on UICollectionView and UITableView in a super-easy way!
                   DESC
  spec.homepage     = "https://github.com/vermaanand/AVListAnimator"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Anand Verma" => "vermaanand607@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/vermaanand/AVListAnimator.git", :tag => "#{spec.version}" }
  spec.source_files = "AVListAnimator/Sources/*.{swift}"
  spec.swift_version = "5.0"
end