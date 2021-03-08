
Pod::Spec.new do |spec|

  spec.name         = "SwiftAlertFramework"
  spec.version      = "1.0.0"
  spec.summary      = "A small framework to Show alert in Swift."
  spec.description  = <<-DESC
                   SwiftAlertFramework is a small and lightweight Swift framework that allows to show alertMessage in a super-easy way!
                   DESC
  spec.homepage     = "https://github.com/bommateja/SwiftAlertFramework"
  spec.license      = "MIT"
  spec.author             = { "Theja" => "theja@biocipher.in" }

  spec.platform     = :ios, "13.0"

  spec.source       = { :git => "https://github.com/bommateja/SwiftAlertFramework.git", :tag => "1.0.0" }
  spec.source_files  = "SwiftAlertFramework", "SwiftAlertFramework/**/*.{h,m}"
 

end
